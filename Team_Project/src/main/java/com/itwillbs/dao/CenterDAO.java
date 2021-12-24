package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.NoticeDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

public interface CenterDAO {
	
	// 추상메서드
	public void insertQna(QnaDTO qnaDTO);

	public List<QnaDTO> getQnaList(PageDTO pageDTO);

//	public Object getMaxNum();

	public int getQnaCount();

	public void insertNotice(NoticeDTO noticeDTO);
	
	
	
}
