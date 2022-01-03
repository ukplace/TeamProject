package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.OrderPageItemDTO;

@Repository
public class OrderDAOImpl implements OrderDAO {

	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.OrderMapper";

	@Override
	public OrderPageItemDTO getProductInfo(int p_num) {
		System.out.println("OrderDAOImpl - getProductInfo()");
		
		return null;
	}

}
