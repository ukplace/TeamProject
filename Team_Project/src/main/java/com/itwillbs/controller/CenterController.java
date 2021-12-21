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
	
	@RequestMapping(value = "/center/notice", method = RequestMethod.GET)
	public String notice() {
		// /WEB-INF/views/foot/notice.jsp
		return "foot/notice";
	}
	@RequestMapping(value = "/center/noticePro", method = RequestMethod.GET)
	public String noticePro() {
		// /WEB-INF/views/foot/notice.jsp
		return "foot/notice";
	}
	
	@RequestMapping(value = "/foot/faq_list", method = RequestMethod.GET)
	public String faq_list() {
		// /WEB-INF/views/foot/withdrawal.jsp
		return "foot/faq_list";
	}

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
	
	@RequestMapping(value = "/foot/qna_delete", method = RequestMethod.GET)
	public String qna_delete() {
		// /WEB-INF/views/foot/qna_delete.jsp
		return "foot/qna_delete";
	}
	
	@RequestMapping(value = "/foot/qnaDeletePro", method = RequestMethod.POST)
	public String qnaDeletePro() {
		// /WEB-INF/views/foot/qnaDeletePro.jsp
		return "redirect:/foot/qna_list";
	}


}
