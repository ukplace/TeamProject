package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.ProductService;

@Controller
public class ProductController {
	
	@Inject
	private ProductService productService;
	

	// 상품정보
	@RequestMapping(value = "/foot/product_detail", method = RequestMethod.GET)
	public String product_detail() {
		// /WEB-INF/views/foot/product_detail
		return "foot/product_detail";
	}
	@RequestMapping(value = "/foot/list_men_outdoor", method = RequestMethod.GET)
	public String list_men_outdoor() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_outdoor";
	}
	@RequestMapping(value = "/foot/list_men_running", method = RequestMethod.GET)
	public String list_men_running() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_running";
	}
	@RequestMapping(value = "/foot/list_men_sneakers", method = RequestMethod.GET)
	public String list_men_sneakers() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_sneakers";
	}
	@RequestMapping(value = "/foot/list_men_gentleman", method = RequestMethod.GET)
	public String list_men_gentleman() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_men_gentleman";
	}
	@RequestMapping(value = "/foot/list_men", method = RequestMethod.GET)
	public String list_men() {
		// /WEB-INF/views/foot/list_men
		return "foot/list_men";
	}
	
	@RequestMapping(value = "/foot/list_women", method = RequestMethod.GET)
	public String list_women() {
		// /WEB-INF/views/foot/list_women
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
	@RequestMapping(value = "/foot/list_kids", method = RequestMethod.GET)
	public String list_kids() {
		// /WEB-INF/views/foot/list_kids
		return "foot/list_kids";
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
