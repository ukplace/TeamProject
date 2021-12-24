package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.CenterDAO;
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
		
		if(centerDAO.getMaxNum()==null) { // 글 없는 경우
			qnaDTO.setQna_idx(1);
		}else { // 게시판 글 있는 경우
			qnaDTO.setQna_idx(centerDAO.getMaxNum()+1);
		}
		
		if(centerDAO.getIncrementNum()==null) {
			qnaDTO.setQna_re_ref(1);
		}else {
			qnaDTO.setQna_re_ref(centerDAO.getIncrementNum());
		}

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
<<<<<<< HEAD
	public void insertNotice(NoticeDTO noticeDTO) {
		centerDAO.insertNotice(noticeDTO);
	}
=======
	public void insertReplyAricle(QnaDTO qnaDTO) {
		
		centerDAO.insertReplyAricle(qnaDTO);
		
	}
	
	
>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git
	
}
