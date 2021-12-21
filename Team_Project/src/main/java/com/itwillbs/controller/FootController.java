package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class FootController {
	
	@Inject
	private MemberService memberService;
	
	
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
	@RequestMapping(value = "/foot/wishlist", method = RequestMethod.GET)
	public String wishlist() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/wishlist";
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
	@RequestMapping(value = "/foot/product_detail", method = RequestMethod.GET)
	public String product_detail() {
		// /WEB-INF/views/foot/product_detail
		return "foot/product_detail";
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
	@RequestMapping(value = "/foot/list_kids", method = RequestMethod.GET)
	public String list_kids() {
		// /WEB-INF/views/foot/list_kids
		return "foot/list_kids";
	}

	@RequestMapping(value = "/foot/login", method = RequestMethod.GET)
	public String login() {
		// /WEB-INF/views/board/writeForm.jsp
		return "foot/login";
	} 
	
	@RequestMapping(value = "/foot/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO, HttpSession session) {
		MemberDTO userCheck = memberService.userCheck(memberDTO);
		
		if(userCheck != null) {
			System.out.println(memberDTO.getM_email());
			
			if(userCheck.getM_email().equals("admin@shushu.com")) {
				session.setAttribute("id", memberDTO.getM_email());
				return "redirect:/admin/index";
			}else {
				session.setAttribute("m_Email", memberDTO);
				return "redirect:/foot/index";
			}
					
		}else {
			
		 return "foot/msg";
		}
	} 
	
	@RequestMapping(value = "/foot/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
			session.invalidate();
		return "foot/index";
	} 
	
	@RequestMapping(value = "/foot/join", method = RequestMethod.GET)
	public String joinPro(MemberDTO memberDTO) {
		return "foot/join";
	}
	
	@RequestMapping(value = "/foot/joinPro", method = RequestMethod.POST)
	public String join(MemberDTO memberDTO) {
		System.out.println("/foot/joinPro");
		
		memberService.insertMember(memberDTO);
		return "redirect:/foot/index";
	}
	
	@RequestMapping(value = "/foot/review", method = RequestMethod.GET)
	public String review() {
		// /WEB-INF/views/foot/review.jsp
		return "foot/review";
	}
	@RequestMapping(value = "/foot/review_write", method = RequestMethod.GET)
	public String review_write() {
		// /WEB-INF/views/foot/review_write.jsp
		return "foot/review_write";
	}
	@RequestMapping(value = "/foot/review_write_pro", method = RequestMethod.POST)
	public String review_write_pro() {
		// /WEB-INF/views/foot/product-detail.jsp
		return "redirect:/foot/product_detail";
	}
	@RequestMapping(value = "/foot/review_update", method = RequestMethod.GET)
	public String review_update() {
		// /WEB-INF/views/foot/reviewUpdate.jsp
		return "foot/review_update";
	}
	@RequestMapping(value = "/foot/review_update_pro", method = RequestMethod.POST)
	public String review_update_pro() {
		// /WEB-INF/views/foot/product-detail.jsp
		return "redirect:/foot/product_detail";
	}
	
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
	
	@RequestMapping(value = "/foot/member_info", method = RequestMethod.GET)
	public String member_info() {
		// /WEB-INF/views/foot/memberInfo.jsp
		return "foot/member_info";
	}
	
	@RequestMapping(value = "/foot/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		// /WEB-INF/views/foot/withdrawal.jsp
		return "foot/withdrawal";
	}
	

}