package com.itwillbs.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.domain.SearchDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@Controller
public class ProductController {

	@Inject
	private ProductService productService;
	@Inject
	MemberService memberService;
	@Inject
	private AdminService adminService;

	/* 전체 상품 검색 */
	// 상품 페이지 검색은 Mapper 가 조금 특이함으로 가서 가서 확인해볼 필요가 있음.
	//우리 페이지의 search 폼에 데이터를 입력하면 keyword를 받아온다. ( 우리 페이지는 일단 title로 밖에 검사안되므로 title부분도 고
	@RequestMapping(value = "/foot/search", method = RequestMethod.GET)
	public String productSearch(HttpServletRequest request, Model model,
			@RequestParam(required = false, defaultValue = "1") int pageNum,
			@RequestParam(required = false, defaultValue = "1") int pageSize,
			@RequestParam(required = false, defaultValue = "title") String searchType,
			@RequestParam(required = false) String keyword) throws Exception {

		//객체를 담아줄 searchDTO생성 
		SearchDTO searchDTO = new SearchDTO();
		
		// searchDTO에는 searchType 과 , keyword 밖에 없지만 pageDTO를 상속받아 pagesize를 사용할수 있다.
		// 이하 pageDTO 의 모든 역활을 searchDTO 가 수행한다.
		searchDTO.setSearchType(searchType);
		searchDTO.setKeyword(keyword);
		searchDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			searchDTO.setPageNum("1");
		} else {
			searchDTO.setPageNum(request.getParameter("pageNum"));
		}

		int pageCount = productService.getProductTotal(searchDTO);
		searchDTO.setCount(pageCount);
		searchDTO.init();

		List<ProductDTO> productList = productService.getProductList(searchDTO);

		model.addAttribute("searchDTO", searchDTO);
		model.addAttribute("productList", productList);
		// /WEB-INF/views/foot/product_list
		return "foot/product_list";
	}

	// 상품정보
	@RequestMapping(value = "/foot/product_detail", method = RequestMethod.GET)
	public String product_detail(@RequestParam("num") int p_num, Model model) throws Exception {
		ProductDTO productDTO = productService.productDetail(p_num);
		List<ProductQtyDTO> qtyList = productService.productQtyDetail(p_num);

		model.addAttribute("ProductDTO", productDTO);
		model.addAttribute("qtyList", qtyList);

		return "foot/product_detail";
	}

	// MEN 상품정보
	@RequestMapping(value = "/foot/list_men_outdoor", method = RequestMethod.GET)
	public String list_men_outdoor(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductOutdoorCount());

		List<ProductDTO> productOutdoorList = productService.getProductOutdoorList(pageDTO);
		
		// 제고 및 신발사이즈 (qty)를 설저하지 않으면 나오지 않게 하기위한 작업 
		// 확인해서 담아줄 OkQtyOutdoorList 객체 생성 
		
		List<ProductDTO> OkQtyOutdoorList = new ArrayList<ProductDTO>();
		// 일단 검색해서 나온 제품을 갯수만큼 for문을 반복해준다.
		for (int i = 0; i < productOutdoorList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();
			// qty확인할 qty 객체에 반복될 제품의 p_num값을 가지
			qty.setP_num(productOutdoorList.get(i).getP_num());
			// qty 가 있으면 설정이 된값, 없으면 안된값으로 확인을 한다.
			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);
			// 만약 checkqty에서 리턴값이 있으면 OkQtyOutdoorList에 넣어줘서
			if (checkqty.size() != 0) {
				OkQtyOutdoorList.add(productOutdoorList.get(i));
			}

		}
						// 화면에 qty가 있는지 확인된 OkQtyOutdoorList가 출력된다. 
		model.addAttribute("productOutdoorList", OkQtyOutdoorList);
		model.addAttribute("pageDTO", pageDTO);

		return "foot/list_men_outdoor";
		
		
		// 이하 모든 list에 동일한 작업을 수행함. 
	}

	@RequestMapping(value = "/foot/list_men_running", method = RequestMethod.GET)
	public String list_men_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductRunningCount());

		List<ProductDTO> productRunningList = productService.getProductRunningList(pageDTO);
		List<ProductDTO> OkQtyRunningList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productRunningList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productRunningList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyRunningList.add(productRunningList.get(i));
			}

		}

		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productRunningList", OkQtyRunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_running";
	}

	@RequestMapping(value = "/foot/list_men_sneakers", method = RequestMethod.GET)
	public String list_men_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProducSneakersCount());

		List<ProductDTO> productSneakersList = productService.getProducSneakersList(pageDTO);

		List<ProductDTO> OkQtyRunningList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productSneakersList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productSneakersList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyRunningList.add(productSneakersList.get(i));
			}

		}

		model.addAttribute("productSneakersList", OkQtyRunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_sneakers";
	}

	@RequestMapping(value = "/foot/list_men_gentleman", method = RequestMethod.GET)
	public String list_men_gentleman(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductGentlemanCount());

		List<ProductDTO> productGentlemanList = productService.getProductGentlemanList(pageDTO);
		List<ProductDTO> OkGentlemanList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productGentlemanList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productGentlemanList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkGentlemanList.add(productGentlemanList.get(i));
			}
		}

		model.addAttribute("productGentlemanList", OkGentlemanList);
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/list_men
		return "foot/list_men_gentleman";
	}

	@RequestMapping(value = "/foot/list_men", method = RequestMethod.GET)
	public String list_men(HttpServletRequest request, Model model) {

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProducMenCount());

		// 고객창에서 qty 설정 안하면 안보이게 하는구문
		List<ProductDTO> productMenList = productService.getProducMentList(pageDTO);

		// Qty 채크해서 있으면 담아주는 OkQtyMenList객체 생성
		List<ProductDTO> OkQtyMenList = new ArrayList<ProductDTO>();

		// 일단 모든 맨리스트를 뽑았기 때문에 productMenList 크기만큼 반복한다.
		for (int i = 0; i < productMenList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			// qty에 p_num i번째 p_num 을 가져와서
			qty.setP_num(productMenList.get(i).getP_num());

			// qty check가 있는지 확인을 한다.
			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			// 이후 확인한 checkqty 가 하나라도 있으면 OkQty에 더해 준다.
			if (checkqty.size() != 0) {
				OkQtyMenList.add(productMenList.get(i));
			}
		}

		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productMenList", OkQtyMenList);
		model.addAttribute("pageDTO", pageDTO);

		return "foot/list_men";
	}

	// WOMEN 리스트
	@RequestMapping(value = "/foot/list_women", method = RequestMethod.GET)
	public String list_women(HttpServletRequest request, Model model) {
		// 데이터 가져오기
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8); // pageSize(한 행에 보여줄 상품갯수)

		if (request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
			pageDTO.setPageNum("1");
		} else { // 있으면 pageNum 2 로 세팅
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductWomenCount());

		List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);

		List<ProductDTO> OkQtyWomenList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productWomenList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productWomenList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyWomenList.add(productWomenList.get(i));
			}
		}

		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productWomenList", OkQtyWomenList);
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/list_kids
		return "foot/list_women";
	}

	@RequestMapping(value = "/foot/list_women_outdoor", method = RequestMethod.GET)
	public String list_women_outdoor(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductW_OutdoorCount());
		List<ProductDTO> productW_OutdoorList = productService.getProductW_OutdoorList(pageDTO);

		List<ProductDTO> OkQtyW_OutdoorList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productW_OutdoorList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productW_OutdoorList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyW_OutdoorList.add(productW_OutdoorList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productW_OutdoorList", OkQtyW_OutdoorList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_outdoor";
	}

	@RequestMapping(value = "/foot/list_women_running", method = RequestMethod.GET)
	public String list_women_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductW_RunningCount());
		List<ProductDTO> productW_RunningList = productService.getProductW_RunningList(pageDTO);

		List<ProductDTO> OkQtyW_RunningList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productW_RunningList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productW_RunningList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyW_RunningList.add(productW_RunningList.get(i));
			}
		}

		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productW_RunningList", OkQtyW_RunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_running";
	}

	@RequestMapping(value = "/foot/list_women_sneakers", method = RequestMethod.GET)
	public String list_women_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductW_SneakersCount());
		List<ProductDTO> productW_SneakersList = productService.getProductW_SneakersList(pageDTO);
		List<ProductDTO> OkQtyW_SneakersList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productW_SneakersList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productW_SneakersList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyW_SneakersList.add(productW_SneakersList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productW_SneakersList", OkQtyW_SneakersList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_sneakers";
	}

	@RequestMapping(value = "/foot/list_women_lady", method = RequestMethod.GET)
	public String list_women_lady(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductLadyCount());
		List<ProductDTO> productLadyList = productService.getProductLadyList(pageDTO);
		List<ProductDTO> OkQtyLadyList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productLadyList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productLadyList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyLadyList.add(productLadyList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productLadyList", OkQtyLadyList);
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/list_men
		return "foot/list_women_lady";
	}

	// KIDS 리스트
	@RequestMapping(value = "/foot/list_kids", method = RequestMethod.GET)
	public String list_kids(HttpServletRequest request, Model model) {
		// 데이터 가져오기
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8); // pageSize(한 행에 보여줄 상품갯수)

		if (request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
			pageDTO.setPageNum("1");
		} else { // 있으면 pageNum 2 로 세팅
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductKidsCount());

		List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);

		List<ProductDTO> OkQtyKidsList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productKidsList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productKidsList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyKidsList.add(productKidsList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productKidsList", OkQtyKidsList);
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/list_kids
		return "foot/list_kids";
	}

	@RequestMapping(value = "/foot/list_kids_kid", method = RequestMethod.GET)
	public String list_kids_kid(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductK_KidCount());
		List<ProductDTO> productK_KidList = productService.getProductK_KidList(pageDTO);

		List<ProductDTO> OkQtyK_KidList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productK_KidList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productK_KidList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyK_KidList.add(productK_KidList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productK_KidList", OkQtyK_KidList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_kid";
	}

	@RequestMapping(value = "/foot/list_kids_running", method = RequestMethod.GET)
	public String list_kids_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductK_RunningCount());
		List<ProductDTO> productK_RunningList = productService.getProductK_RunningList(pageDTO);
		List<ProductDTO> OkQtyK_RunningList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productK_RunningList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productK_RunningList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyK_RunningList.add(productK_RunningList.get(i));
			}
		}
		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productK_RunningList", OkQtyK_RunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_running";
	}

	@RequestMapping(value = "/foot/list_kids_sneakers", method = RequestMethod.GET)
	public String list_kids_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		pageDTO.setCount(productService.getProductK_SneakersCount());

		List<ProductDTO> productK_SneakersList = productService.getProductK_SneakersList(pageDTO);

		List<ProductDTO> OkQtyK_SneakersList = new ArrayList<ProductDTO>();

		for (int i = 0; i < productK_SneakersList.size(); i++) {
			ProductQtyDTO qty = new ProductQtyDTO();

			qty.setP_num(productK_SneakersList.get(i).getP_num());

			List<ProductQtyDTO> checkqty = productService.qtyCheck(qty);

			if (checkqty.size() != 0) {
				OkQtyK_SneakersList.add(productK_SneakersList.get(i));
			}
		}

		// 페이징처리 - 제품리스트 전체 글 개수

		model.addAttribute("productK_SneakersList", OkQtyK_SneakersList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_sneakers";
	}

	// KIDS 제품상세정보
	@RequestMapping(value = "/foot/kids_detail", method = RequestMethod.GET)
	public String kids_detail() {
		// /WEB-INF/views/foot/list_men
		return "foot/kids_detail";
	}

	// 위시리스트
	@RequestMapping(value = "/foot/wishlist", method = RequestMethod.GET)
	public String wishlist() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/wishlist";
	}

	
	
	// 장바구니
	@RequestMapping(value = "/foot/cart", method = RequestMethod.GET)
	public String cart(HttpSession session, Model model, HttpServletResponse response) throws IOException {

		if (session.getAttribute("m_idx") == null) {
			response.setContentType("text/html; charset=UTF-8");
			// 2. response 객체의 getWriter()메서드를 호출하여 출력스트림 객체(PrintWriter) 가져오기
			PrintWriter out = response.getWriter();
			// 3. PrintWriter 객체의 println() 메서드를 호출하여 HTML 태그(자바스크립트) 문자열 생성

			out.println("<script>");
			out.println("alert('로그인을 하세요!')");
			out.println("location.href='./login'");
			out.println("</script>");
		}

		// 내 session객체를 이용해서 (m_idx) cartDTO검색 -> cartDTO의 p_num 이용해서 제품정보 가져오기!
		
		CartListDTO cartListDTO = new CartListDTO();
		cartListDTO.setM_idx((Integer) session.getAttribute("m_idx"));
		List<CartListDTO> cartList = productService.getCartList(cartListDTO);

		model.addAttribute("cartList", cartList);

		return "foot/cart";
	}

	@RequestMapping(value = "/admin/changeOrderState", method = RequestMethod.GET)
	public String changeOrderState(HttpServletRequest request, HttpServletResponse response) throws Exception {


		Order_memberDTO order_memberDTO = new Order_memberDTO();

		order_memberDTO.setO_idx(Integer.parseInt(request.getParameter("o_idx")));
		order_memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));
		order_memberDTO.setO_state((request.getParameter("o_state")));
		if (order_memberDTO != null) {

			productService.changeOrderState(order_memberDTO);

		}
		return "redirect:/admin/order_list";
	}

}
