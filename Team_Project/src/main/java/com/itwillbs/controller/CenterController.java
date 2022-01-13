package com.itwillbs.controller;

import java.util.Arrays;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.websocket.Session;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.FaqDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;
import com.itwillbs.service.CenterService;

@Controller
public class CenterController {

	@Inject
	private CenterService centerService;

	
	// center(고객센터) 페이지는 내용이 거의다 동일하다.
	// 리스트 뽑아오고, 페이징처리하고, view 페이지 가는것까지 거의다 동일하나,
	// qna 의 리플 다는 부분에서 ref, lev, seq 설정을 해줘야하기 때문에 이부분에 대한 이해가 필요하다.
	
	/* 이부분 꼭 이해하기 
	 * 
	 * 답글 등록을 위한 순서 관련 번호 계산
	 * 1. 대상 게시물번호(원본글번호)의 참조글(re_ref)번호를 자신의 참조글번호로 지정
	 * 2. 기존 원본글의 참조글번호와 동일한 참조글번호 게시물을 찾아서
	 *    해당 게시물들의 순서번호(re_seq)를 모두 1씩 증가시킴
	 *    (단, 원본글의 순서번호는 변경되지 않아야 하므로 원본글의 순서번호보다 큰 값만 탐색)
	 * 3. 새 글의 순서번호(re_seq)는 원본글 순서번호 + 1 값으로 설정
	 * 4. 새 글의 들여쓰기(re_lev)는 원본글 들여쓰기 + 1 값으로 설정
	 * 
	 * ------------------------------------------------------------------------
	 * 원본글(board_num) 새글(num) 참조글(re_ref) 순서(re_seq) 들여쓰기(re_lev)
	 * ------------------------------------------------------------------------
	 *       없음           13           13             0              0
	 *       
	 * ex) 13번 게시물에 대한 답글 등록 -> 등록될 새 글 번호가 100번이라고 가정
	 * => 13번 글에 대한 답글이므로 13번의 참조글번호를 자신의 참조글번호로 설정
	 *    원본글(13)의 순서번호가 0이므로 자신의 순서번호는 0+1 값(1)으로 설정
	 *    원본글(13)의 들여쓰기가 0이므로 자신의 들여쓰기는 0+1 값(1)으로 설정
	 * ------------------------------------------------------------------------
	 * 원본글(board_num) 새글(num) 참조글(re_ref) 순서(re_seq) 들여쓰기(re_lev)
	 * ------------------------------------------------------------------------
	 *       없음           13           13             0              0
	 *        13           100           13             1              1
	 *        
	 * ex) 13번 게시물에 대한 두번째 답글 등록 -> 등록될 새 글 번호가 101번이라고 가정
	 * => 13번 글에 대한 답글이므로 13번의 참조글번호를 자신의 참조글번호로 설정
	 *    원본글(13)의 순서번호가 0이므로 원본글보다 순서번호가 큰 게시물들의 
	 *    순서번호를 모두 +1 씩 처리
	 *    답글의 순서번호는 원본글(13)의 순서번호 + 1
	 *    원본글(13)의 들여쓰기가 0이므로 자신의 들여쓰기는 0+1 값(1)으로 설정
	 * ------------------------------------------------------------------------
	 * 원본글(board_num) 새글(num) 참조글(re_ref) 순서(re_seq) 들여쓰기(re_lev)
	 * ------------------------------------------------------------------------
	 *       없음           13           13             0              0
	 *        13           101           13             1              1
	 *        13           100           13             2(1 -> 2)      1  
	 *        			        
	 * ex) 13번 게시물에 대한 세번째 답글 등록 -> 등록될 새 글 번호가 122번이라고 가정
	 * => 13번 글에 대한 답글이므로 13번의 참조글번호를 자신의 참조글번호로 설정
	 *    원본글(13)의 순서번호가 0이므로 원본글보다 순서번호가 큰 게시물들의 
	 *    순서번호를 모두 +1 씩 처리
	 *    답글의 순서번호는 원본글(13)의 순서번호 + 1
	 *    원본글(13)의 들여쓰기가 0이므로 자신의 들여쓰기는 0+1 값(1)으로 설정
	 * ------------------------------------------------------------------------
	 * 원본글(board_num) 새글(num) 참조글(re_ref) 순서(re_seq) 들여쓰기(re_lev)
	 * ------------------------------------------------------------------------
	 *       없음           13           13             0              0
	 *        13           122           13             1              1
	 *        13           101           13             2(1 -> 2)      1
	 *        13           100           13             3(2 -> 3)      1 
	 *        			        
	 * ex) 101번 게시물에 대한 첫번째 답글 등록 -> 등록될 새 글 번호가 130번이라고 가정
	 * => 101번 글에 대한 답글이므로 101번의 참조글번호를 자신의 참조글번호로 설정
	 *    원본글(101)의 순서번호가 1이므로 원본글보다 순서번호가 큰 게시물들의 
	 *    순서번호를 모두 +1 씩 처리
	 *    답글의 순서번호는 원본글(101)의 순서번호 + 1
	 *    원본글(101)의 들여쓰기가 1이므로 자신의 들여쓰기는 1+1 값(2)으로 설정
	 * ------------------------------------------------------------------------
	 * 원본글(board_num) 새글(num) 참조글(re_ref) 순서(re_seq) 들여쓰기(re_lev)
	 * ------------------------------------------------------------------------
	 *       없음           13           13             0              0
	 *        13           122           13             1              1
	 *        13           101           13             2(1 -> 2)      1
	 *       101           130           13             3              2 
	 *        13           100           13             4(3 -> 4)      1 
	 */
	
	
	// 공지사항(notice) 매핑
	@RequestMapping(value = "/center/notice_list", method = RequestMethod.GET)
	public String notice_list(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		// 한 페이지에 보여 줄 갯수
		pageDTO.setPageSize(10);

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		// 리스트 받아오기
		List<NoticeDTO> noticeList = centerService.getNoticeList(pageDTO);

		// 카운트
		pageDTO.setCount(centerService.getNoticeCount());

		// 데이터 담아서 list.jsp에 리스트 전달
		model.addAttribute("noticeList", noticeList);
		// 페이지dto에 담아서 전달
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/notice_list.jsp
		return "foot/notice_list";
	}

	@RequestMapping(value = "/center/notice_detail", method = RequestMethod.GET)
	public String notice_detail(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNotice_idx(Integer.parseInt(request.getParameter("notice_idx")));
		System.out.println(noticeDTO.getNotice_idx());
		System.out.println(pageDTO.getPageNum());
		noticeDTO = centerService.getNoticeDetail(noticeDTO);

		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("noticeDTO", noticeDTO);

		// /WEB-INF/views/foot/qna_update.jsp
		return "foot/notice_detail";
	}

	@RequestMapping(value = "/center/notice_write", method = RequestMethod.GET)
	public String notice_write() {

		// /WEB-INF/views/foot/notice_write.jsp
		return "foot/notice_write";
	}

	@RequestMapping(value = "/center/notice_writePro", method = RequestMethod.POST)
	public String notice_write_pro(NoticeDTO noticeDTO) {

		centerService.insertNotice(noticeDTO);
		System.out.println(noticeDTO.getNotice_subject());
		// /WEB-INF/views/foot/notice_list.jsp
		return "redirect:/center/notice_list";
	}

	@RequestMapping(value = "/center/notice_update", method = RequestMethod.GET)
	public String notice_update(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNotice_idx(Integer.parseInt(request.getParameter("notice_idx")));
		System.out.println(noticeDTO.getNotice_idx());
		System.out.println(pageDTO.getPageNum());
		noticeDTO = centerService.getNoticeDetail(noticeDTO);

		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("noticeDTO", noticeDTO);

		return "foot/notice_update";
	}

	@RequestMapping(value = "/center/notice_update_pro", method = RequestMethod.POST)
	public String notice_update_pro(HttpServletRequest request, NoticeDTO noticeDTO) {
		noticeDTO.setNotice_idx(Integer.parseInt(request.getParameter("notice_idx")));
		centerService.updateNotice(noticeDTO);

		return "redirect:/center/notice_list";
	}

	// **공지사항 삭제페이지 만들어야할까? 아님 버튼누르면 바로 삭제기능만 구현할까? -> 버튼누르면 삭제구현하기로

	@RequestMapping(value = "/center/notice_delete_pro", method = RequestMethod.GET)
	public String notice_delete_pro(HttpServletRequest request) {
		NoticeDTO noticeDTO = new NoticeDTO();
		noticeDTO.setNotice_idx(Integer.parseInt(request.getParameter("notice_idx")));

		centerService.deleteNotice(noticeDTO);

		return "redirect:/center/notice_list";
	}

	// -------------------------------------FFFFFFFFAAAAAAAAAAAQQQQQQQQQQQ_-----------------------------

	// 자주묻는질문(faq) 매핑
	@RequestMapping(value = "/center/faq_list", method = RequestMethod.GET)
	public String faq_list(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		pageDTO.setPageSize(10); // 페이지 글 갯수

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		// 리스트
		List<FaqDTO> faqList = centerService.getFaqList(pageDTO);

		// 카운트
		pageDTO.setCount(centerService.getFaqCount());

		// 모델에 담아서 list에 전달
		model.addAttribute("faqList", faqList);
		// 페이지 DTO에 담아서 전달
		model.addAttribute("pageDTO", pageDTO);

		return "foot/faq_list";
	}

	@RequestMapping(value = "/center/faq_detail", method = RequestMethod.GET)
	public String faq_detail(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		FaqDTO faqDTO = new FaqDTO();
		faqDTO.setFaq_idx(Integer.parseInt(request.getParameter("faq_idx")));

		faqDTO = centerService.getFaqDetail(faqDTO);

		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("faqDTO", faqDTO);

		return "foot/faq_detail";
	}

	@RequestMapping(value = "/center/faq_write", method = RequestMethod.GET)
	public String faq_write() {

		return "foot/faq_write";
	}

	@RequestMapping(value = "/center/faq_write_pro", method = RequestMethod.POST)
	public String faq_write_pro(FaqDTO faqDTO) {

		centerService.insertFaq(faqDTO);

		return "redirect:/center/faq_list";
	}

	@RequestMapping(value = "/center/faq_update", method = RequestMethod.GET)
	public String faq_update(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();

		if (request.getParameter("pageNum") == null) {
			pageDTO.setPageNum("1");
		} else {
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		FaqDTO faqDTO = new FaqDTO();
		faqDTO.setFaq_idx(Integer.parseInt(request.getParameter("faq_idx")));

		faqDTO = centerService.getFaqDetail(faqDTO);

		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("faqDTO", faqDTO);

		// /WEB-INF/views/foot/faq_update.jsp
		return "foot/faq_update";
	}

	@RequestMapping(value = "/center/faq_update_pro", method = RequestMethod.POST)
	public String faq_update_pro(HttpServletRequest request, FaqDTO faqDTO) {
		faqDTO.setFaq_idx(Integer.parseInt(request.getParameter("faq_idx")));

		centerService.faq_update(faqDTO);

		// /WEB-INF/views/foot/faq_list.jsp
		return "redirect:/center/faq_list";
	}

	// **자주묻는질문(faq)도 삭제페이지 만들어야할까? 아님 버튼누르면 바로 삭제기능만 구현할까?

	@RequestMapping(value = "/center/faq_delete_pro", method = RequestMethod.GET)
	public String faq_delete_pro(HttpServletRequest request) {
		FaqDTO faqDTO = new FaqDTO();
		faqDTO.setFaq_idx(Integer.parseInt(request.getParameter("faq_idx")));

		centerService.deleteFaq(faqDTO);

		// /WEB-INF/views/foot/faq_list.jsp
		return "redirect:/center/faq_list";
	}

	// 자주묻는질문(qna) 매핑
	@RequestMapping(value = "/center/qna_write", method = RequestMethod.GET)
	public String qna_write() {

		// /WEB-INF/views/foot/qna_write.jsp
		return "foot/qna_write";
	}

	@RequestMapping(value = "/center/qna_write_pro", method = RequestMethod.POST)
	public String qna_write_pro(QnaDTO qnaDTO) {
		// DB insert 작업
		centerService.insertQna(qnaDTO);

		// qna목록으로 이동
		// /WEB-INF/views/foot/qna_list.jsp
		return "redirect:/center/qna_list";
	}

	@RequestMapping(value = "/center/qna_list", method = RequestMethod.GET)
	public String qna_list(HttpServletRequest request, Model model) {
		PageDTO pageDTO = new PageDTO();
		// 한 페이지에 보여 줄 갯수
		pageDTO.setPageSize(10);

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}

		// 리스트 받아오기
		List<QnaDTO> qnaList = centerService.getQnaList(pageDTO);

		// 카운트
		pageDTO.setCount(centerService.getQnaCount());

		// 데이터 담아서 list.jsp에 리스트 전달
		model.addAttribute("qnaList", qnaList);
		// 페이지dto에 담아서 전달
		model.addAttribute("pageDTO", pageDTO);

		// /WEB-INF/views/foot/qna_list.jsp
		return "foot/qna_list";
	}

	@RequestMapping(value = "/center/qna_detail", method = RequestMethod.GET)
	public String qna_detail(HttpServletRequest request, Model model, QnaDTO qnaDTO) {
		PageDTO pageDTO = new PageDTO();

		if (request.getParameter("pageNum") == null) { // 없을때
			pageDTO.setPageNum("1");
		} else { // 있을때
			pageDTO.setPageNum(request.getParameter("pageNum"));
		}
		qnaDTO = new QnaDTO();
		qnaDTO.setQna_idx(Integer.parseInt(request.getParameter("qna_idx")));

		qnaDTO = centerService.getQnaDetail(qnaDTO);
		System.out.println(qnaDTO.toString());
		model.addAttribute("pageDTO", pageDTO);
		model.addAttribute("qnaDTO", qnaDTO);

		// /WEB-INF/views/foot/qna_update.jsp
		return "foot/qna_detail";
	}

	@RequestMapping(value = "/center/qna_update", method = RequestMethod.GET)
	public String qna_update() {

		// /WEB-INF/views/foot/qna_update.jsp
		return "foot/qna_update";
	}

	@RequestMapping(value = "/center/qna_update_pro", method = RequestMethod.POST)
	public String qna_update_pro() {

		// /WEB-INF/views/foot/qna_list.jsp
		return "redirect:/center/qna_list";
	}

	@RequestMapping(value = "/center/qna_delete", method = RequestMethod.GET)
	public String qna_delete(HttpServletRequest request) {
		QnaDTO qnaDTO = new QnaDTO();
		qnaDTO.setQna_idx(Integer.parseInt(request.getParameter("qna_idx")));

		centerService.deleteQna(qnaDTO);
		// /WEB-INF/views/foot/qna_delete.jsp
		return "foot/qna_delete";
	}

	@RequestMapping(value = "/center/qna_delete_pro", method = RequestMethod.POST)
	public String qna_delete_pro() {

		// /WEB-INF/views/foot/qna_list.jsp
		return "redirect:/center/qna_list";
	}

	@RequestMapping(value = "/center/qna_reply", method = RequestMethod.POST)
	public String qna_reply(Model model, QnaDTO qnaDTO) {

		model.addAttribute("qnaDTO", qnaDTO); // detail.jsp 에서 qnaDTO를 받아서 model 객체에 저장한 값을 넣어줌
		System.out.println(qnaDTO.toString());
		return "foot/qna_reply";
	}

	@RequestMapping(value = "/center/qna_reply_pro", method = RequestMethod.POST)
	public String qna_reply_pro(QnaDTO qnaDTO) {

		centerService.insertReplyAricle(qnaDTO);

		return "redirect:/center/qna_list";
	}

}
