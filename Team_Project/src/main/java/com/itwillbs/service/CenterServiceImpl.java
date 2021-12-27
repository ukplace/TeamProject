package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CenterDAO;
import com.itwillbs.domain.FaqDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

@Service
public class CenterServiceImpl implements CenterService {

	@Inject
	private CenterDAO centerDAO;
	
	@Override
	public void insertQna(QnaDTO qnaDTO) {
		System.out.println("CenterServiceImpl insertQna()");
		
		if(centerDAO.getMaxQna()==null) { // 글 없는 경우
			qnaDTO.setQna_idx(1);
		}else { // 게시판 글 있는 경우
			qnaDTO.setQna_idx(centerDAO.getMaxQna()+1);
		}
		System.out.println(centerDAO.getIncrementNum());
		if(centerDAO.getIncrementNum()==null) {
			qnaDTO.setQna_re_ref(1);
		}else {
			qnaDTO.setQna_re_ref(centerDAO.getIncrementNum());
		}
		System.out.println(qnaDTO.getQna_re_ref());
		qnaDTO.setQna_re_lev(0);
		qnaDTO.setQna_re_seq(0);

		centerDAO.insertQna(qnaDTO);
		
	}

	@Override
	public List<QnaDTO> getQnaList(PageDTO pageDTO) {
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum())); // 페이지 번호 인트형으로
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1); //글 시작 번호 정의
		pageDTO.setEndRow(pageDTO.getStartRow()+pageDTO.getPageSize()-1); // 끝페이지
		// 매퍼대신
		
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		return centerDAO.getQnaList(pageDTO);
	}

	@Override
	public int getQnaCount() {
		
		return centerDAO.getQnaCount();
		
	}
	
	@Override
	public QnaDTO getQnaDetail(QnaDTO qnaDTO) {
		System.out.println("centerSerice getQnaDetail");
		
		return centerDAO.getQnaDetail(qnaDTO);
	}
	
	
	
	
	
	
	
	

	public void insertReplyAricle(QnaDTO qnaDTO) {
		
		centerDAO.insertReplyAricle(qnaDTO);
		
	}

	@Override
	public void insertFaq(FaqDTO faqDTO) {
		
		centerDAO.insertFaq(faqDTO);
		
	}

	@Override
	public List<FaqDTO> getFaqList(PageDTO pageDTO) {
		System.out.println("centerSerice getFaqList");
		
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum())); // 번호 인트형
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1); // 시작번호정의
		pageDTO.setEndRow(pageDTO.getStartRow()+pageDTO.getPageSize()-1); // 끝페이지
		
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		
		return centerDAO.getFaqList(pageDTO);
	}

	@Override
	public int getFaqCount() {
		
		return centerDAO.getFaqCount();
	}

	@Override
	public FaqDTO getFaqDetail(FaqDTO faqDTO) {
		System.out.println("centerSerice getFaqDetail");
		
		return centerDAO.getFaqDetail(faqDTO);
	}

	@Override
	public void faq_update(FaqDTO faqDTO) {
		System.out.println(faqDTO.getFaq_subject()+"서비스");
		centerDAO.faq_update(faqDTO);
		
	}

	
	
	//-------------------------------------notice-------------------------------
	
	
	@Override
	public void insertNotice(NoticeDTO noticeDTO) {
		System.out.println(noticeDTO.getNotice_subject());
		centerDAO.insertNotice(noticeDTO);
	}

	@Override
	public List<NoticeDTO> getNoticeList(PageDTO pageDTO) {
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum())); // 번호 인트형
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1); // 시작번호정의
		pageDTO.setEndRow(pageDTO.getStartRow()+pageDTO.getPageSize()-1); // 끝페이지
		
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		
		return centerDAO.getNoticeList(pageDTO);
		
		
		
	}

	@Override
	public int getNoticeCount() {

		
		return  centerDAO.getNoticeCount();
	}

	@Override
	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO) {
		return centerDAO.getNoticeDetail(noticeDTO);
	}

	@Override
	public void updateNotice(NoticeDTO noticeDTO) {
		centerDAO.updateNotice(noticeDTO);
	}

	@Override
	public void deleteNotice(NoticeDTO noticeDTO) {
		centerDAO.deleteNotice(noticeDTO);
	}

	
}
