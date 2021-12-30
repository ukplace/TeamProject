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

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@RestController
public class AjaxController {

	@Inject
	private MemberService memberService;
	
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
				HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
				httpURLConnection.setRequestMethod("POST");
				httpURLConnection.setRequestProperty("Authorization", "KakaoAK d7bd2af917e7ee54a17fefe75ce21cbc");
				httpURLConnection.setRequestProperty("Content-type", "application/x-www-form-urlencoded;charset=utf-8");
				httpURLConnection.setDoOutput(true);
				String str = "cid=TC0ONETIME&partner_order_id=partner_order_id&partner_user_id=partner_user_id&"
						+ "item_name=초코파이&quantity=1&total_amount=2200&tax_free_amount=0&vat_amount=200&tax_free_amount=0&"
						+ "approval_url=http://localhost:8080/success"
						+ "&fail_url=https://localhost:8080/fail"
						+ "&cancel_url=https://localhost:8080/cancel";
				OutputStream outputStream = httpURLConnection.getOutputStream();
				DataOutputStream dataOutputStream = new DataOutputStream(outputStream);
				dataOutputStream.writeBytes(str);
				dataOutputStream.close();
				
				int result = httpURLConnection.getResponseCode();
				
				InputStream inputStream;
				if(result == 200) {
					inputStream = httpURLConnection.getInputStream();
				}else {
					inputStream = httpURLConnection.getErrorStream();
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
	
	
	
	
	

}
	

