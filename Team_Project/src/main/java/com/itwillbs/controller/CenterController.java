package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.QnaDTO;
import com.itwillbs.service.CenterService;

@Controller
public class CenterController {
	
	@Inject
	private CenterService centerService;
	
	
	// 공지사항(notice) 매핑
	@RequestMapping(value = "/center/notice_list", method = RequestMethod.GET)
	public String notice_list() {
		
		// /WEB-INF/views/foot/notice_list.jsp
		return "foot/notice_list";
	}
	@RequestMapping(value = "/center/notice_detail", method = RequestMethod.GET)
	public String notice_detail() {
		
		// /WEB-INF/views/foot/notice_detail.jsp
		return "foot/notice_detail";
	}
	@RequestMapping(value = "/center/notice_write", method = RequestMethod.GET)
	public String notice_write() {
		
		// /WEB-INF/views/foot/notice_write.jsp
		return "foot/notice_write";
	}
	@RequestMapping(value = "/center/notice_write_pro", method = RequestMethod.POST)
	public String notice_write_pro() {
		
		// /WEB-INF/views/center/notice_list.jsp
		return "redirect:/center/notice_list";
	}
	@RequestMapping(value = "/center/notice_update", method = RequestMethod.GET)
	public String notice_update() {
		
		// /WEB-INF/views/foot/notice_update.jsp
		return "foot/notice_update";
	}
	@RequestMapping(value = "/center/notice_update_pro", method = RequestMethod.POST)
	public String notice_update_pro() {
		
		// /WEB-INF/views/center/notice_list.jsp
		return "redirect:/center/notice_list";
	}
	
	// **공지사항 삭제페이지 만들어야할까? 아님 버튼누르면 바로 삭제기능만 구현할까?
	
	@RequestMapping(value = "/center/notice_delete_pro", method = RequestMethod.POST)
	public String notice_delete_pro() {
		
		// /WEB-INF/views/center/notice_list.jsp
		return "redirect:/center/notice_list";
	}
	
	
	
	
	// 자주묻는질문(faq) 매핑
	@RequestMapping(value = "/center/faq_list", method = RequestMethod.GET)
	public String faq_list() {
		
		// /WEB-INF/views/foot/faq_list.jsp
		return "foot/faq_list";
	}
<<<<<<< HEAD
	@RequestMapping(value = "/center/faq_detail", method = RequestMethod.GET)
	public String faq_detail() {
		
		// /WEB-INF/views/foot/faq_detail.jsp
		return "foot/faq_detail";
	}
	@RequestMapping(value = "/center/faq_write", method = RequestMethod.GET)
	public String faq_write() {
		
		// /WEB-INF/views/foot/faq_list.jsp
		return "foot/faq_list";
	}
	@RequestMapping(value = "/center/faq_write_pro", method = RequestMethod.POST)
	public String faq_write_pro() {
		
		// /WEB-INF/views/center/faq_list.jsp
		return "redirect:/center/faq_list";
	}
	@RequestMapping(value = "/center/faq_update", method = RequestMethod.GET)
	public String faq_update() {
		
		// /WEB-INF/views/foot/faq_update.jsp
		return "foot/faq_update";
	}
	@RequestMapping(value = "/center/faq_update_pro", method = RequestMethod.POST)
	public String faq_update_pro() {
		
		// /WEB-INF/views/center/faq_list.jsp
		return "redirect:/center/faq_list";
	}
	
	// **자주묻는질문(faq)도 삭제페이지 만들어야할까? 아님 버튼누르면 바로 삭제기능만 구현할까?
	
	@RequestMapping(value = "/center/faq_delete_pro", method = RequestMethod.POST)
	public String faq_delete_pro() {
		
		// /WEB-INF/views/center/faq_list.jsp
		return "redirect:/center/faq_list";
	}
	
	
	
	
	
	// 문의(qna) 매핑
=======

	@RequestMapping(value = "/center/qna_write", method = RequestMethod.GET)
	public String qna_write() {
		// /WEB-INF/views/foot/qna_write.jsp
		return "foot/qna_write";
	}
	
	@RequestMapping(value = "/center/qna_write_pro", method = RequestMethod.POST)
	public String qna_write_pro(QnaDTO qnaDTO) {
		// /WEB-INF/views/foot/qna_write_pro.jsp
		// DB insert 작업
		centerService.insertQna(qnaDTO);
		
		// qna목록으로 이동
		return "redirect:/foot/qna_list";
	}

>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git
	@RequestMapping(value = "/foot/qna_list", method = RequestMethod.GET)
	public String qna_list() {
		// /WEB-INF/views/board/writeForm.jsp
		
		
		return "foot/qna_list";
	}
	
	
	@RequestMapping(value = "/foot/qna_update", method = RequestMethod.GET)
	public String qna_update() {
		// /WEB-INF/views/board/qna_update.jsp
		return "foot/qna_update";
	}
	
	@RequestMapping(value = "/foot/qna_update_pro", method = RequestMethod.GET)
	public String qna_update_pro() {
		// /WEB-INF/views/foot/qna_delete.jsp
		return "foot/qna_delete";
	}

	   @RequestMapping(value = "/foot/qna_delete", method = RequestMethod.GET)
	   public String qna_delete() {
	      // /WEB-INF/views/foot/qna_delete.jsp
	      return "foot/qna_delete";
	   }
	   
	   @RequestMapping(value = "/foot/qna_delete_pro", method = RequestMethod.POST)
	   public String qna_delete_pro() {
	      // /WEB-INF/views/foot/qnaDeletePro.jsp
	      return "redirect:/foot/qna_list";
	   }
	


}
