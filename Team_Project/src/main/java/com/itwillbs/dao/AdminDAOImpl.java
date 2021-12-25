package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

@Repository
public class AdminDAOImpl implements AdminDAO {
	// 객체생성
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.AdminMapper";
	
	
	@Override
	public void insertProduct(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - insertProduct()");
		sqlSession.insert(namespace + ".insertProduct", productDTO);
	}

	@Override
	public List<ProductDTO> getProductList(PageDTO pageDTO) {
		System.out.println("AdminDAOImpl - getProductList()");
		return sqlSession.selectList(namespace + ".getProductList", pageDTO);
	}

	@Override
	public Integer getProductCount() {
		System.out.println("AdminDAOImpl - getProductCount()");
		return sqlSession.selectOne(namespace + ".getProductCount");
	}


}
