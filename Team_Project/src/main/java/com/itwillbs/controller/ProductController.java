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
	@Inject MemberService memberService;
	@Inject
	private AdminService adminService;
	
	/* 전체 상품 검색 */
	@RequestMapping(value = "/foot/search", method = RequestMethod.GET)
	public String productSearch(HttpServletRequest request, Model model
			, @RequestParam(required = false, defaultValue = "1") int pageNum
			, @RequestParam(required = false, defaultValue = "1") int pageSize
			, @RequestParam(required = false, defaultValue = "title") String searchType
			, @RequestParam(required = false) String keyword) throws Exception {
		
		SearchDTO searchDTO = new SearchDTO();
		searchDTO.setSearchType(searchType);
		searchDTO.setKeyword(keyword);
		
		// 전체 상품 개수
		int pageCount = productService.getProductTotal(searchDTO);
		
		// 페이지 정보 세팅
		// 1) 현재 페이지
		if(request.getParameter("pageNum") == null) {
			searchDTO.setPageNum("1");
		}else {
			searchDTO.setPageNum(request.getParameter("pageNum"));
		}
		searchDTO.setPageSize(8); // 2) 현재 페이지 범위
		searchDTO.setPageCount(4); // 3) 전체 게시물 개수
		
		
		
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
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productOutdoorList = productService.getProductOutdoorList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductOutdoorCount());
		
		model.addAttribute("productOutdoorList", productOutdoorList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "foot/list_men_outdoor";
	}
	@RequestMapping(value = "/foot/list_men_running", method = RequestMethod.GET)
	public String list_men_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productRunningList = productService.getProductRunningList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductRunningCount());
		
		model.addAttribute("productRunningList", productRunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_running";
	}
	@RequestMapping(value = "/foot/list_men_sneakers", method = RequestMethod.GET)
	public String list_men_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productSneakersList = productService.getProducSneakersList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProducSneakersCount());
		
		model.addAttribute("productSneakersList", productSneakersList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_sneakers";
	}
	
	@RequestMapping(value = "/foot/list_men_gentleman", method = RequestMethod.GET)
	public String list_men_gentleman(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productGentlemanList = productService.getProductGentlemanList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductGentlemanCount());
		
		model.addAttribute("productGentlemanList", productGentlemanList);
		model.addAttribute("pageDTO", pageDTO);
		
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_gentleman";
	}
	@RequestMapping(value = "/foot/list_men", method = RequestMethod.GET)
	public String list_men(HttpServletRequest request, Model model) {

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productMenList = productService.getProducMentList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProducMenCount());
		
		model.addAttribute("productMenList", productMenList);
		model.addAttribute("pageDTO", pageDTO);
		
		
		return "foot/list_men";
	}
	
	
	// WOMEN 리스트
		@RequestMapping(value = "/foot/list_women", method = RequestMethod.GET)
		public String list_women(HttpServletRequest request, Model model) {
			// 데이터 가져오기
			PageDTO pageDTO = new PageDTO();
			pageDTO.setPageSize(8); // pageSize(한 행에 보여줄 상품갯수)
			
			if(request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
				pageDTO.setPageNum("1");
			} else { // 있으면 pageNum 2 로 세팅
				pageDTO.setPageNum(request.getParameter("pageNum"));
			}
			
			List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
			
			// 페이징처리 - 제품리스트 전체 글 개수
			pageDTO.setCount(productService.getProductWomenCount());
			
			model.addAttribute("productWomenList", productWomenList);
			model.addAttribute("pageDTO", pageDTO);
			
			// /WEB-INF/views/foot/list_kids
			return "foot/list_women";
		}
		
	@RequestMapping(value = "/foot/list_women_outdoor", method = RequestMethod.GET)
	public String list_women_outdoor(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productW_OutdoorList = productService.getProductW_OutdoorList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductW_OutdoorCount());
		
		model.addAttribute("productW_OutdoorList", productW_OutdoorList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_outdoor";
	}
	
	@RequestMapping(value = "/foot/list_women_running", method = RequestMethod.GET)
	public String list_women_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productW_RunningList = productService.getProductW_RunningList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductW_RunningCount());
		
		model.addAttribute("productW_RunningList", productW_RunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_running";
	}
	
	@RequestMapping(value = "/foot/list_women_sneakers", method = RequestMethod.GET)
	public String list_women_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productW_SneakersList = productService.getProductW_SneakersList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductW_SneakersCount());
		
		model.addAttribute("productW_SneakersList", productW_SneakersList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_sneakers";
	}
	
	@RequestMapping(value = "/foot/list_women_lady", method = RequestMethod.GET)
	public String list_women_lady(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productLadyList = productService.getProductLadyList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductLadyCount());
		
		model.addAttribute("productLadyList", productLadyList);
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
		
		if(request.getParameter("pageNum") == null) { // 없으면 pageNum 1 로 세팅
			pageDTO.setPageNum("1");
		} else { // 있으면 pageNum 2 로 세팅
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		
		List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductKidsCount());
		
		model.addAttribute("productKidsList", productKidsList);
		model.addAttribute("pageDTO", pageDTO);
		
		// /WEB-INF/views/foot/list_kids
		return "foot/list_kids";
	}

	
	@RequestMapping(value = "/foot/list_kids_kid", method = RequestMethod.GET)
	public String list_kids_kid(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productK_KidList = productService.getProductK_KidList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductK_KidCount());
		
		model.addAttribute("productK_KidList", productK_KidList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_kid";
	}
	
	@RequestMapping(value = "/foot/list_kids_running", method = RequestMethod.GET)
	public String list_kids_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productK_RunningList = productService.getProductK_RunningList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductK_RunningCount());
		
		model.addAttribute("productK_RunningList", productK_RunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_running";
	}
	@RequestMapping(value = "/foot/list_kids_sneakers", method = RequestMethod.GET)
	public String list_kids_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(8);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productK_SneakersList = productService.getProductK_SneakersList(pageDTO);
		
		// 페이징처리 - 제품리스트 전체 글 개수
		pageDTO.setCount(productService.getProductK_SneakersCount());
		
		model.addAttribute("productK_SneakersList", productK_SneakersList);
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
		
		if(session.getAttribute("m_idx")==null) {
			response.setContentType("text/html; charset=UTF-8");
			//2. response 객체의 getWriter()메서드를 호출하여 출력스트림 객체(PrintWriter) 가져오기
			PrintWriter out = response.getWriter();
			//3. PrintWriter 객체의 println() 메서드를 호출하여 HTML 태그(자바스크립트) 문자열 생성
			
			out.println("<script>");
			out.println("alert('로그인을 하세요!')"); 
			out.println("location.href='./login'"); 
			out.println("</script>");
		}
		
		
		//내 session객체를 이용해서 (m_idx) cartDTO검색 -> cartDTO의 p_num 이용해서 제품정보 가져오기! 
		// 이렇게 하면하나만있을때 나오는건데..
		// 만약에 cartDTO에서 getCart 에서 1개값이나닌 여러개 값이나오면 어떡해야하지?
//		CartDTO cartDTO = new CartDTO();
//		cartDTO.setM_idx((Integer)session.getAttribute("m_idx"));
//		int m_idx = cartDTO.getM_idx();
//		List<CartDTO> cart = productService.getCart(m_idx);
		
		CartListDTO cartListDTO = new CartListDTO();
		cartListDTO.setM_idx((Integer)session.getAttribute("m_idx"));
		List<CartListDTO> cartList = productService.getCartList(cartListDTO);
			
		model.addAttribute("cartList", cartList);
			
		return "foot/cart";
	}
	
	
	
	
	


}
