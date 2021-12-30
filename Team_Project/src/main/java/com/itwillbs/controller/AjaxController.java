package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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

}
