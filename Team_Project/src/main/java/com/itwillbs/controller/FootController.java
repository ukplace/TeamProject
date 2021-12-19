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
	@RequestMapping(value = "/foot/kids", method = RequestMethod.GET)
	public String kids() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/kids";
	}
	@RequestMapping(value = "/foot/test", method = RequestMethod.GET)
	public String test() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/test";
	}
	@RequestMapping(value = "/foot/login", method = RequestMethod.GET)
	public String login() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/login";
	} 
	@RequestMapping(value = "/foot/join", method = RequestMethod.GET)
	public String join() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/join";
	}
	@RequestMapping(value = "/foot/qna_list", method = RequestMethod.GET)
	public String qna_list() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/qna_list";
	}
	@RequestMapping(value = "/foot/qna_write", method = RequestMethod.GET)
	public String qna_write() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/qna_write";
	}
	@RequestMapping(value = "/foot/qna_update", method = RequestMethod.GET)
	public String qna_update() {
		// /WEB-INF/views/board/qna_update.jsp
		return "foot/qna_update";
	}
	@RequestMapping(value = "/foot/qna_delete", method = RequestMethod.GET)
	public String qna_delete() {
		// /WEB-INF/views/foot/qna_delete.jsp
		return "foot/qna_delete";
	}
	@RequestMapping(value = "/foot/qnaDeletePro", method = RequestMethod.POST)
	public String qnaDeletePro() {
		// /WEB-INF/views/foot/qnaDeletePro.jsp
		return "redirect:/foot/product-detail";
	}
	@RequestMapping(value = "/foot/review", method = RequestMethod.GET)
	public String review() {
		// /WEB-INF/views/foot/review.jsp
		return "foot/review";
	}
	@RequestMapping(value = "/foot/reviewWrite", method = RequestMethod.GET)
	public String reviewWrite() {
		// /WEB-INF/views/foot/reviewWirte.jsp
		return "foot/reviewWrite";
	}
	@RequestMapping(value = "/foot/reviewWritePro", method = RequestMethod.POST)
	public String reviewWritePro() {
		// /WEB-INF/views/foot/product-detail.jsp
		return "redirect:/foot/product-detail";
	}
	@RequestMapping(value = "/foot/reviewUpdate", method = RequestMethod.GET)
	public String reviewUpdate() {
		// /WEB-INF/views/foot/reviewUpdate.jsp
		return "foot/reviewUpdate";
	}
	@RequestMapping(value = "/foot/reviewUpdatePro", method = RequestMethod.POST)
	public String reviewUpdatePro() {
		// /WEB-INF/views/foot/product-detail.jsp
		return "redirect:/foot/product-detail";
	}
	
	@RequestMapping(value = "/foot/orderList", method = RequestMethod.GET)
	public String orderList() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/orderList";
	}
	
	@RequestMapping(value = "/foot/orderDetail", method = RequestMethod.GET)
	public String orderDetail() {
		// /WEB-INF/views/foot/orderDetail.jsp
		return "foot/orderDetail";
	}
	
	@RequestMapping(value = "/foot/memberInfo", method = RequestMethod.GET)
	public String memberInfo() {
		// /WEB-INF/views/foot/memberInfo.jsp
		return "foot/memberInfo";
	}
	
	@RequestMapping(value = "/foot/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		// /WEB-INF/views/foot/withdrawal.jsp
		return "foot/withdrawal";
	}
	
	
	

	

}