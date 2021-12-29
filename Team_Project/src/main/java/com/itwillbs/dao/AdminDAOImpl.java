package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
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

	@Override
	public void updateProduct(ProductDTO productDTO) {
		System.out.println("AdminDAOImpl - updateProduct()");
		sqlSession.update(namespace + ".updateProduct", productDTO);
	}

	@Override
	public void deleteProduct(int p_num) {
		sqlSession.delete(namespace+".deleteProduct", p_num);		
	}

	@Override
	public ProductDTO productView(int p_num) {
		
		return sqlSession.selectOne(namespace + ".productView", p_num);
	}

	@Override
	public List<MemberDTO> getMemberList(PageDTO pageDTO) {

		return sqlSession.selectList(namespace+".getMemberList", pageDTO);
	}

	@Override
	public int getMemberCount() {
		return sqlSession.selectOne(namespace+".getMemberCount");
	}

	@Override
	public MemberDTO getMemberDetail(MemberDTO memberDTO) {
		return sqlSession.selectOne(namespace+".getMemberDetail", memberDTO);
	}
	
	@Override
	public void updateMember(MemberDTO memberDTO) {
		sqlSession.selectOne(namespace+".updateMember", memberDTO);
	}

	@Override
	public void deleteMember(int m_idx) {
		 sqlSession.selectOne(namespace+".deleteMember", m_idx);
	}


	
	

}
