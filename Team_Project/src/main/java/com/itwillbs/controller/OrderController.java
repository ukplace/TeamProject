package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderPageDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.OrderService;

@Controller
public class OrderController {
	
	@Inject
	private OrderService orderService;
	
	@Inject
	private MemberService memberService;
	
//	// order.jsp(주문페이지)'이동
//	@RequestMapping(value = "/foot/order", method = RequestMethod.GET)
//	   public String productRegist(@PathVariable("m_idx") int m_idx, OrderPageDTO opd, Model model) {
//		
//		System.out.println("m_idx : " + m_idx);
//		System.out.println("orders : " + opd.getOrders());
//		
//		model.addAttribute("orderList", orderService.getProductInfo(opd.getClass());
//		model.addAttribute("memberInfo", orderService.getMemberInfo(m_idx));
//		
//		// /WEB-INF/views/admin/product_regist.jsp
//	      return "foot/order";
//	   }
	

	
	
}
