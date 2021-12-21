package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.QnaDTO;

@Repository
public class CenterDAOImpl implements CenterDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.CenterMapper";

	@Override
	public void insertQna(QnaDTO qnaDTO) {
		System.out.println("CenterDAOImpl insertQna()");
		
		sqlSession.insert(namespace+".insertQna", qnaDTO);
	}
	
}
