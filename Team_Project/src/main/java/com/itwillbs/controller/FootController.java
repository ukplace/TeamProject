package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class FootController {
	@RequestMapping(value = "/foot/index", method = RequestMethod.GET)
		public String index() {
			// /WEB-INF/views/board/writeForm.jsp
			return "foot/index";
		}
	@RequestMapping(value = "/foot/about", method = RequestMethod.GET)
	public String about() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/about";
	}
	@RequestMapping(value = "/foot/add-to-wishlist", method = RequestMethod.GET)
	public String addtowishlistjsp() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/add-to-wishlist.jsp";
	}
	@RequestMapping(value = "/foot/cart", method = RequestMethod.GET)
	public String cart() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/cart";
	}
	@RequestMapping(value = "/foot/checkout", method = RequestMethod.GET)
	public String checkout() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/checkout";
	}
	@RequestMapping(value = "/foot/contact", method = RequestMethod.GET)
	public String contact() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/contact";
	}
	@RequestMapping(value = "/foot/men", method = RequestMethod.GET)
	public String men() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/men";
	}
	@RequestMapping(value = "/foot/product-detail", method = RequestMethod.GET)
	public String productdetail() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/product-detail";
	}
	@RequestMapping(value = "/foot/women", method = RequestMethod.GET)
	public String women() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/women";
	}
	@RequestMapping(value = "/foot/test", method = RequestMethod.GET)
	public String test() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/test";
	}

}