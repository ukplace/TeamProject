package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.service.ProductService;

@Controller
public class ProductController {
	
	@Inject
	private ProductService productService;
	
	
	// 상품전체리스트
	@RequestMapping(value = "/foot/product_list", method = RequestMethod.GET)
	public String product_list(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(12);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		
		List<ProductDTO> productList = productService.getProductList(pageDTO);
		
		model.addAttribute("productList", productList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/product_list
		return "foot/product_list";
	}

	// 상품정보
	@RequestMapping(value = "/foot/product_detail", method = RequestMethod.GET)
	public String product_detail() {
		// /WEB-INF/views/foot/product_detail
		return "foot/product_detail";
	}
	// MEN 상품정보
	@RequestMapping(value = "/foot/list_men_outdoor", method = RequestMethod.GET)
	public String list_men_outdoor(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(6);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productOutdoorList = productService.getProductOutdoorList(pageDTO);
		
		model.addAttribute("productOutdoorList", productOutdoorList);
		model.addAttribute("pageDTO", pageDTO);
		
		return "foot/list_men_outdoor";
	}
	@RequestMapping(value = "/foot/list_men_running", method = RequestMethod.GET)
	public String list_men_running(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(6);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productRunningList = productService.getProductRunningList(pageDTO);
		
		model.addAttribute("productRunningList", productRunningList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_running";
	}
	@RequestMapping(value = "/foot/list_men_sneakers", method = RequestMethod.GET)
	public String list_men_sneakers(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(6);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productSneakersList = productService.getProducSneakersList(pageDTO);
		
		model.addAttribute("productSneakersList", productSneakersList);
		model.addAttribute("pageDTO", pageDTO);
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_sneakers";
	}
	@RequestMapping(value = "/foot/list_men_gentleman", method = RequestMethod.GET)
	public String list_men_gentleman(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(6);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productGentlemanList = productService.getProductGentlemanList(pageDTO);
		
		model.addAttribute("productGentlemanList", productGentlemanList);
		model.addAttribute("pageDTO", pageDTO);
		
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_gentleman";
	}
	@RequestMapping(value = "/foot/list_men", method = RequestMethod.GET)
	public String list_men(HttpServletRequest request, Model model) {

		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(6);
		
		if(request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		}else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		List<ProductDTO> productMenList = productService.getProducMentList(pageDTO);
		
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
			
			model.addAttribute("productWomenList", productWomenList);
			model.addAttribute("pageDTO", pageDTO);
			
			// /WEB-INF/views/foot/list_kids
			return "foot/list_women";
		}
		
	@RequestMapping(value = "/foot/list_women_outdoor", method = RequestMethod.GET)
	public String list_women_outdoor() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_outdoor";
	}
	@RequestMapping(value = "/foot/list_women_running", method = RequestMethod.GET)
	public String list_women_running() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_running";
	}
	@RequestMapping(value = "/foot/list_women_sneakers", method = RequestMethod.GET)
	public String list_women_sneakers() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_women_sneakers";
	}
	@RequestMapping(value = "/foot/list_women_lady", method = RequestMethod.GET)
	public String list_women_lady() {
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
		
		model.addAttribute("productKidsList", productKidsList);
		model.addAttribute("pageDTO", pageDTO);
		
		// /WEB-INF/views/foot/list_kids
		return "foot/list_kids";
	}

	// KIDS 제품상세정보
	@RequestMapping(value = "/foot/kids_detail", method = RequestMethod.GET)
	public String kids_detail() {
		// /WEB-INF/views/foot/list_men
		return "foot/kids_detail";
	}
	
	@RequestMapping(value = "/foot/list_kids_kid", method = RequestMethod.GET)
	public String list_kids_kid() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_kid";
	}
	@RequestMapping(value = "/foot/list_kids_running", method = RequestMethod.GET)
	public String list_kids_running() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_running";
	}
	@RequestMapping(value = "/foot/list_kids_sneakers", method = RequestMethod.GET)
	public String list_kids_sneakers() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_kids_sneakers";
	}
	
	
	
	
	// 주문정보
	@RequestMapping(value = "/foot/order", method = RequestMethod.GET)
	public String order() {
		// /WEB-INF/views/foot/order.jsp
		return "foot/order";
	}
	
	@RequestMapping(value = "/foot/order_list", method = RequestMethod.GET)
	public String order_list() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/order_list";
	}
	
	@RequestMapping(value = "/foot/order_detail", method = RequestMethod.GET)
	public String order_detail() {
		// /WEB-INF/views/foot/orderDetail.jsp
		return "foot/order_detail";
	}
	
	// 위시리스트
	@RequestMapping(value = "/foot/wishlist", method = RequestMethod.GET)
	public String wishlist() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/wishlist";
	}
	
	// 장바구니
	@RequestMapping(value = "/foot/cart", method = RequestMethod.GET)
	public String cart() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/cart";
	}
	


}
