package com.itwillbs.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
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

	@Override
	public MemberDTO getMemberInfo(int m_idx) {
		System.out.println("OrderDAOImpl - getMemberInfo()");
		
		return null;
	}

	@Override
	public List<OrderPageItemDTO> getOrdersInfo(List<OrderPageItemDTO> orders) {
		System.out.println("OrderDAOImpl - getOrdersInfo()");
		
		List<OrderPageItemDTO> result = new ArrayList<OrderPageItemDTO>();
		
		for(OrderPageItemDTO ord : orders) {
			
			OrderPageItemDTO productInfo = sqlSession.selectOne(namespace + ".getProductInfo", ord);
			
			productInfo.setO_count(ord.getO_count());
			productInfo.initSaleTotal();
			
			result.add(productInfo);
		}
		
		return sqlSession.selectList(namespace + ".getOrdersInfo", orders);
	}

}
