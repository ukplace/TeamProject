package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.OrderPageDTO;

@Controller
public class OrderController {

	
	// order.jsp(주문페이지)'이동을 수행하는 URL 매핑 메서드 추가
	@RequestMapping(value = "/foot/order", method = RequestMethod.GET)
	   public String productRegist(@PathVariable("m_idx") int m_idx, OrderPageDTO opd, Model model) {
		
		System.out.println("m_idx : " + m_idx);
		System.out.println("orders : " + opd.getOrders());
		
		// /WEB-INF/views/admin/product_regist.jsp
	      return "foot/order";
	   }
	
	
}
