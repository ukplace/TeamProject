package com.itwillbs.controller;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.ProtocolException;
import java.net.URL;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
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
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@RestController
public class AjaxController {

	@Inject
	private MemberService memberService;

	@Inject
	private ProductService productService;
	
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
	
	@RequestMapping(value = "/foot/kakaoPay.cls") 
	@ResponseBody
	public String kakaoPay() {
		
			try {
				URL url = new URL("https://kapi.kakao.com//v1/payment/ready");
				HttpURLConnection conn = (HttpURLConnection) url.openConnection();
				conn.setRequestMethod("POST");
				conn.setRequestProperty("Authorization", "KakaoAK d7bd2af917e7ee54a17fefe75ce21cbc");
				conn.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				conn.setDoOutput(true);
				String str = "cid=TC0ONETIME&"
						+ "partner_order_id=partner_order_id&"
						+ "partner_user_id=partner_user_id&"
						+ "item_name=초코파이&"
						+ "quantity=1&"
						+ "total_amount=2200&"
						+ "tax_free_amount=0&"
						+ "vat_amount=200&"
						+ "tax_free_amount=0&"
						+ "approval_url=http://localhost:8080/success&"
						+ "fail_url=https://localhost:8080/fail&"
						+ "cancel_url=https://localhost:8080/cancel";
				OutputStream outputStream = conn.getOutputStream();
				DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
				dataOutputStream.writeBytes(str);
				dataOutputStream.close();
				
				int result = conn.getResponseCode();
				
				InputStream inputStream;
				if(result == 200) {
					inputStream = conn.getInputStream();
				}else {
					inputStream = conn.getErrorStream();
				}
				
				InputStreamReader inputStreamReader = new InputStreamReader(inputStream);
				BufferedReader bufferedReader = new BufferedReader(inputStreamReader);
				return bufferedReader.readLine();
			
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return"{\"result\":\"NO\"}";
				
		
	}
	

	@ResponseBody
	@RequestMapping(value = "/foot/addCart", method = RequestMethod.POST)
	public int addCart(CartDTO cart, HttpSession session) throws Exception {
	int result = 0;
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
	
	
	
	
	
	

}
	

