package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CenterDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.QnaDTO;

@Service
public class CenterServiceImpl implements CenterService {

	@Inject
	private CenterDAO centerDAO;
	
	@Override
	public void insertQna(QnaDTO qnaDTO) {
		System.out.println("CenterServiceImpl insertQna()");
		
		if(centerDAO.getMaxNum()==null) { // 글 없는 경우
			qnaDTO.setQna_idx(1);
		}else { // 게시판 글 있는 경우
//			qnaDTO.setQna_idx(centerDAO.getMaxNum()+1);
		}
		centerDAO.insertQna(qnaDTO);
		
	}

	@Override
	public List<QnaDTO> getQnaList(PageDTO pageDTO) {
		
		
		return centerDAO.getQnaList(pageDTO);
	}
	
}
