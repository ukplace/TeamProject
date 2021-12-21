package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CenterDAOImpl implements CenterDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.CenterMapper";
	
}
