package com.itwillbs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.Order_detailDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.domain.SearchDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@Controller
public class OrderController {
	
	@Inject
	private ProductService productService;
	@Inject 
	private MemberService memberService;
	
	
	@RequestMapping(value = "/foot/Cart_order", method = RequestMethod.POST)
	public String order(HttpServletRequest request , Model model, HttpSession session) {
		
		MemberDTO member = new MemberDTO();
		member.setM_idx((Integer)session.getAttribute("m_idx"));
		MemberDTO memberDTO = memberService.getMember(member);
		
		CartListDTO cartListDTO = new CartListDTO();
		
		cartListDTO.setM_idx((Integer)session.getAttribute("m_idx"));
		List<CartListDTO> cartList = productService.getCartList(cartListDTO);
		
		
		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("cartList", cartList);
		
		return "foot/order";
	}
	
	@RequestMapping(value = "/foot/Direct_order", method = RequestMethod.POST)
	public String Direct_order(CartListDTO cartListDTO, HttpSession session,Model model) throws Exception {
		
		MemberDTO member = new MemberDTO();
		member.setM_idx((Integer)session.getAttribute("m_idx"));
		MemberDTO memberDTO = memberService.getMember(member);
		
		ProductDTO productDTO = new ProductDTO();
		int p_num = cartListDTO.getP_num();
		productDTO=productService.productDetail(p_num);
		
		cartListDTO.setM_idx(memberDTO.getM_idx());
		cartListDTO.setP_name(productDTO.getP_name());
		cartListDTO.setP_price(productDTO.getP_price());
		cartListDTO.setP_thumImg(productDTO.getP_thumImg());
		
		System.out.println(cartListDTO.getCart_count());
		System.out.println(cartListDTO.getCart_idx());
		System.out.println(cartListDTO.getM_idx());
		System.out.println(cartListDTO.getP_name());
		System.out.println(cartListDTO.getP_num());
		System.out.println(cartListDTO.getP_price());
		System.out.println(cartListDTO.getP_thumImg());
		List<CartListDTO> cartList = new ArrayList<CartListDTO>();
		cartList.add(0,cartListDTO);
		
		
		model.addAttribute("memberDTO", memberDTO);
		model.addAttribute("cartList", cartList);
		
		return "foot/order";
	}
	
	@RequestMapping(value = "/foot/order_Ok", method = RequestMethod.GET)
	public String order_Ok(HttpServletRequest request, HttpSession session) {
		Order_memberDTO o_memberDTO = new Order_memberDTO();
		
		o_memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));
		o_memberDTO.setO_name(request.getParameter("o_name"));
		o_memberDTO.setO_tel(request.getParameter("o_tel"));
		o_memberDTO.setO_zip(request.getParameter("o_zip"));
		o_memberDTO.setO_address(request.getParameter("o_address"));
		o_memberDTO.setO_detail_address(request.getParameter("o_detail_address"));
		o_memberDTO.setO_memo(request.getParameter("o_memo"));
		
		productService.insertO_member(o_memberDTO);
		List<Order_memberDTO> o_memberDTO2 = new ArrayList<Order_memberDTO>();
		o_memberDTO2=productService.getO_idx(o_memberDTO);
		
		o_memberDTO = new Order_memberDTO();
		Order_detailDTO o_detailDTO = new Order_detailDTO();
		o_memberDTO.setO_idx(o_memberDTO2.get(0).getO_idx());
		o_memberDTO.setM_idx(Integer.parseInt(request.getParameter("m_idx")));
		productService.insertO_detail(o_memberDTO);
		
		MemberDTO memberDTO = new MemberDTO();
		 memberDTO.setM_idx((Integer)session.getAttribute("m_idx"));
		 int m_idx = memberDTO.getM_idx();
		 // 받아온 m_idx 값으로 productService - deleteCart(m_idx) 호출
		productService.deleteCart(m_idx);
		
		
		return "foot/order_Ok";
	}
	
	@RequestMapping(value = "/foot/order_No", method = RequestMethod.GET)
	public String order_No() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/order_No";
	}
	
	@RequestMapping(value = "/foot/order_Test", method = RequestMethod.GET)
	public String order_Test() {
		// /WEB-INF/views/foot/orderList.jsp
		return "foot/order_Test";
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
	
	@RequestMapping(value = "/foot/order_complete", method = RequestMethod.GET)
	public String order_complete() {
		// /WEB-INF/views/foot/orderDetail.jsp
		return "foot/order_complete";
	}
	
	
	
	
	
	


}
