package com.itwillbs.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ReviewDTO;
import com.itwillbs.service.AdminService;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@RestController
public class AjaxController {

	@Inject
	private MemberService memberService;

	@Inject
	private ProductService productService;
	
	@Inject
	private AdminService adminService;
	
	// join 에서 email체크 하는 ajax	
	@RequestMapping(value = "/member/emailCheck", method = RequestMethod.GET)
	public ResponseEntity<String> emailCheck(HttpServletRequest request) {
		String result="";
		String email=request.getParameter("m_email");
		
		MemberDTO memberDTO=memberService.getMemberEmail(email);
		if(memberDTO==null) {
			//이메일 없음  이메일 사용가능
			result="emailok";
		}else {
			result="emaildup"; //이메일 있음  이메일 중복
		}
		
		ResponseEntity<String> entity=new ResponseEntity<String>(result,HttpStatus.OK);
		return entity;
	}
	

	
	// foot/product_detail add cart 한 부분 
	@ResponseBody
	@RequestMapping(value = "/foot/addCart", method = RequestMethod.POST)
	public int addCart(CartDTO cart, HttpSession session, HttpServletResponse response) throws Exception {
	int result = 0;
	
	
	if(cart.getP_size()=="") {
		return result;
	}
		MemberDTO member = new MemberDTO();
		member.setM_idx((Integer)session.getAttribute("m_idx"));
			 
	if(member !=null) {
		cart.setM_idx(member.getM_idx());
		productService.addCart(cart);
		result = 1;
		System.out.println("아이디있는지확인 result : " + result);
	}
	 return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/foot/reviewList", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewDTO>> review(HttpServletRequest request) {
			System.out.println("Review 컨트롤러");

			int p_num = Integer.parseInt(request.getParameter("p_num"));
			
			List<ReviewDTO> reviewList = adminService.getPnum(p_num);
			
	ResponseEntity<List<ReviewDTO>> entity=new ResponseEntity<List<ReviewDTO>>(reviewList,HttpStatus.OK);
			return entity;
	}
	
			
	
	
	@RequestMapping(value = "/foot/cartDelete", method = RequestMethod.GET)
	public ResponseEntity<String> cartDelete(HttpServletRequest request) {
		System.out.println("cartDelete 컨트롤러");
		String result="";
		ResponseEntity<String> entity = null;
		
		try {
			CartListDTO cartListDTO = new CartListDTO();
			cartListDTO.setCart_idx(Integer.parseInt(request.getParameter("cart_idx")));
			int cart_idx = cartListDTO.getCart_idx();
			System.out.println("컨트롤러에 넘어오는 값"+cart_idx);
			
			int deleteCount = productService.cartDelete(cart_idx);
			
			if(deleteCount!=0) {
				result="deletedSuccess";
			}else {
				result="deleteFail"; 
			}
			entity = new ResponseEntity<String>(result,HttpStatus.OK);
		} catch (Exception e) {
			System.out.println("오류 발생 -" + e.getMessage());
			entity = new ResponseEntity<String>(HttpStatus.BAD_REQUEST);
		}
		return entity;
	}
	
	// Chart admin
	@RequestMapping(value ="/admin/chart", method = RequestMethod.GET )
	public ResponseEntity<List<Integer>> chart(){
		System.out.println("AjaxController.chart()");
		List<Order_memberDTO> orderList = adminService.getOrderList();
		List<Integer> totalSum = adminService.getWeekOrderList();
		System.out.println(totalSum.get(4));
		ResponseEntity<List<Integer>> entity = new ResponseEntity<List<Integer>>(totalSum, HttpStatus.OK);
				
		return entity;
	}
	
	

	
	
	
}
	

