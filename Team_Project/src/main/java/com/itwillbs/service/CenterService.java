package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.FaqDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

public interface CenterService {

	// 추상메서드
	public int getNoticeCount();
	
	public List<NoticeDTO> getNoticeList(PageDTO pageDTO);

	public void insertNotice(NoticeDTO noticeDTO);
	
	
	
	
	public void insertQna(QnaDTO qnaDTO);
	
	public List<QnaDTO> getQnaList(PageDTO pageDTO);

	public int getQnaCount();



	
	public void insertReplyAricle(QnaDTO qnaDTO);

	public void insertFaq(FaqDTO faqDTO);

	public QnaDTO getQnaDetail(QnaDTO qnaDTO);

	public List<FaqDTO> getFaqList(PageDTO pageDTO);

	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO);

	

	
	public int getFaqCount();

	public FaqDTO getFaqDetail(FaqDTO faqDTO);

	public void faq_update(FaqDTO faqDTO);

	public void updateNotice(NoticeDTO noticeDTO);
	
}
