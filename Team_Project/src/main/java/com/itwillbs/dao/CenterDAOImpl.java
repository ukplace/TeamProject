package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
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

	@Override
	public Integer getMaxNum() {
		
		return sqlSession.selectOne(namespace+".getMaxNum");
	}

	@Override
	public List<QnaDTO> getQnaList(PageDTO pageDTO) {
		
		return sqlSession.selectList(namespace+".getQnaList", pageDTO);
	}

	@Override
	public Integer getQnaCount() {
		
		return sqlSession.selectOne(namespace+".getQnaCount");
		
	}

	@Override
	public Integer getIncrementNum() {

		return sqlSession.selectOne(namespace+".getIncrementNum");
	}

	@Override
	public void insertReplyAricle(QnaDTO qnaDTO) {
		
		sqlSession.update(namespace+".setQna_re_seq",qnaDTO);
		
		sqlSession.insert(namespace+".insertReplyAricle",qnaDTO);
		
		
	}

	 
	

	
}
