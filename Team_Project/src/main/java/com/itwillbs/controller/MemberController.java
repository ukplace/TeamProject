package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.UserSha256;
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
		
		String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
		memberDTO.setM_pass(encryPassword);
		
		MemberDTO userCheck = memberService.userCheck(memberDTO);
		
		
		
		if(userCheck != null) {
			System.out.println(memberDTO.getM_email());
			
			if(userCheck.getM_email().equals("admin@shushu.com")) {
				session.setAttribute("id", memberDTO.getM_email());
				session.setAttribute("m_idx",userCheck.getM_idx());
				System.out.println("세션에 추가한 idx값 "+session.getAttribute("m_idx"));
				return "redirect:/admin/index";
			}else {
				session.setAttribute("id", memberDTO.getM_email());
				session.setAttribute("m_idx",userCheck.getM_idx());
				System.out.println("세션에 추가한 idx값 "+session.getAttribute("m_idx"));
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
	public String join(HttpServletRequest request, MemberDTO memberDTO) {
		System.out.println("/foot/joinPro");
		
		String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
		memberDTO.setM_pass(encryPassword);
		
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