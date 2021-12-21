package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CenterDAO;
import com.itwillbs.domain.QnaDTO;

@Service
public class CenterServiceImpl implements CenterService {

	@Inject
	private CenterDAO centerDAO;
	
	@Override
	public void insertQna(QnaDTO qnaDTO) {
		System.out.println("CenterServiceImpl insertQna()");
		
		centerDAO.insertQna(qnaDTO);
		
	}
	
}
