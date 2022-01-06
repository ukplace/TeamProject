package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.UserSha256;
import com.itwillbs.service.MemberService;
import com.itwillbs.service.ProductService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(AdminController.class);
	
	@Inject
	private MemberService memberService;
	
	@Inject
	private ProductService productService;
	
	
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
	
	// 회원탈퇴
	@RequestMapping(value = "/foot/withdrawal", method = RequestMethod.GET)
	public void withdrawal() throws Exception{
		 logger.info("get withdrawal");
		
	}
	
	// 회원 탈퇴 post
	@RequestMapping(value = "/foot/withdrawalPro", method = RequestMethod.POST)
	public String postWithdrawal(HttpSession session, MemberDTO memberDTO, RedirectAttributes rttr) throws Exception {
	 logger.info("post withdrawal");
	 
	 
	 MemberDTO oldPassDTO = new MemberDTO();
	 
	 oldPassDTO.setM_email((String)session.getAttribute("id"));
	 System.out.println("oldPassDTO.getM_email()"+ oldPassDTO.getM_email());
	 
	 String m_email = oldPassDTO.getM_email();
	 System.out.println(m_email);
	 oldPassDTO = memberService.getMember(m_email);
	 
	 String oldPass = oldPassDTO.getM_pass();
	 System.out.println("oldPass");
	 
	 
	 String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
	 memberDTO.setM_pass(encryPassword);
	 
	 String newPass = memberDTO.getM_pass();
	     
	 if(!(oldPass.equals(newPass))) {
	  rttr.addFlashAttribute("msg", false);
	  return "redirect:/foot/withdrawal";
	 }
	 
	 
	 productService.withdrawal(oldPassDTO);
	 
	 memberService.withdrawal(memberDTO);
	 
	 session.invalidate();
	  
	 return "redirect:/foot/index";
	  
	}
	
	// 회원정보
		@RequestMapping(value = "/foot/member_info", method = RequestMethod.GET)
		
		public String member_info(HttpSession session, Model model) {
			
			
			
			String id = (String)session.getAttribute("id");
			
			MemberDTO memberDTO = memberService.getMember(id);
			
			
			model.addAttribute("memberDTO", memberDTO);
			
			
			return "foot/member_info";
		}
		
		
		// 회원정보수정
		@RequestMapping(value = "/foot/updateMember", method = RequestMethod.POST)
		

		public String updateMember(HttpSession session, Model model,MemberDTO memberDTO) {
			
			System.out.println("MemberController.updateMember()");
			
			String id = (String)session.getAttribute("id");
			
			MemberDTO memberDTO2 = memberService.getMember(id);
			String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
			
			if(memberDTO2.getM_pass().equals(encryPassword)) {
				model.addAttribute("memberDTO", memberDTO2);
				
				return "foot/updateMember";
			}else {
				return "foot/msg";
			}
			
			}


		
		@RequestMapping(value = "/foot/updateMemberPro", method = RequestMethod.POST)
		public String updateMemberPro(MemberDTO memberDTO , Model model, HttpSession session ) {
				
				memberService.updateMember(memberDTO);
			
			return "foot/member_info";
		}
		
		
		
		@RequestMapping(value = "/foot/updatePass", method = RequestMethod.POST)
		public String passChange(HttpSession session, Model model,MemberDTO memberDTO) {
			
			
			String id = (String)session.getAttribute("id");
			
			MemberDTO memberDTO2 = memberService.getMember(id);
			String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
			if(memberDTO2.getM_pass().equals(encryPassword)) {
				model.addAttribute("memberDTO", memberService.getMember((String)session.getAttribute("id")));
				
				return "/foot/updatePass";
			}else {
				return "foot/msg";
			}
			
		}
		
		@RequestMapping(value = "/foot/updatePassPro", method = RequestMethod.POST)
		public String passChangPro(HttpSession session, MemberDTO memberDTO,Model model) {
			String encryPassword = UserSha256.encrypt(memberDTO.getM_pass());
			memberDTO.setM_pass(encryPassword);
			memberService.updatePass(memberDTO);
			return "/foot/index";
		}
	

}