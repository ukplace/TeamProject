package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;

@Controller
public class MemberController {
	
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

	// 로그인
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
				session.setAttribute("id", memberDTO.getM_email());
				return "redirect:/foot/index";
			}
					
		}else {
			
		 return "foot/msg";
		}
	} 
	
	// 로그아웃
	@RequestMapping(value = "/foot/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
			session.invalidate();
		return "foot/index";
	} 
	
	// 회원가입
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
	
	// 회원정보
	@RequestMapping(value = "/foot/member_info", method = RequestMethod.GET)
	public String member_info() {
		// /WEB-INF/views/foot/memberInfo.jsp
		return "foot/member_info";
	}
	
	// 회원탈퇴
	@RequestMapping(value = "/foot/withdrawal", method = RequestMethod.GET)
	public String withdrawal() {
		// /WEB-INF/views/foot/withdrawal.jsp
		return "foot/withdrawal";
	}
	
	

}