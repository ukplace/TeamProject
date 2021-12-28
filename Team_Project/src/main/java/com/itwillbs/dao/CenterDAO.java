package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.FaqDTO;
import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

public interface CenterDAO {
	
	///qna/////
	public void insertQna(QnaDTO qnaDTO);

	public List<QnaDTO> getQnaList(PageDTO pageDTO);

	public Integer getMaxQna();
	public Integer getQnaCount();

	public QnaDTO getQnaDetail(QnaDTO qnaDTO);
	///qna/////
	
	
	
	
	public Integer getIncrementNum();
	
	public void insertReplyAricle(QnaDTO qnaDTO);
	
	// faq
	public void insertFaq(FaqDTO FaqDTO);

	public List<FaqDTO> getFaqList(PageDTO pageDTO);

	public int getFaqCount();

	public FaqDTO getFaqDetail(FaqDTO faqDTO);

	public void faq_update(FaqDTO faqDTO);

	public void deleteFaq(FaqDTO faqDTO);
	
	//notice
	public List<NoticeDTO> getNoticeList(PageDTO pageDTO);

	public void insertNotice(NoticeDTO noticeDTO);

	public int getNoticeCount();

	public NoticeDTO getNoticeDetail(NoticeDTO noticeDTO);

	public void updateNotice(NoticeDTO noticeDTO);

	public void deleteNotice(NoticeDTO noticeDTO);

	public void deleteQna(QnaDTO qnaDTO);

	
	
	//notice
}
