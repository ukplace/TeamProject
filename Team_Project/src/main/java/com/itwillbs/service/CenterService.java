package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

public interface CenterService {

	// 추상메서드
	public void insertQna(QnaDTO qnaDTO);

	public List<QnaDTO> getQnaList(PageDTO pageDTO);


	
	
}
