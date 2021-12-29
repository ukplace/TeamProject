package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
<<<<<<< HEAD
import com.itwillbs.domain.ProductQtyDTO;
=======
import com.itwillbs.domain.ReviewDTO;
>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git

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
<<<<<<< HEAD
	public void updateQty(ProductQtyDTO dto) {
		for(int i = 0; i<dto.getList().size();i++) {
			dto.setP_size(dto.getList().get(i).getP_size());
			System.out.println(dto.getP_size());
			dto.setP_stock(dto.getList().get(i).getP_stock());
			System.out.println(dto.getP_stock());
		
			sqlSession.insert(namespace+".updateQty", dto);
		}
		
	}

	@Override
	public List<ProductQtyDTO> getqtyList(int p_num) {
		return sqlSession.selectList(namespace+".getqtyList", p_num);
	}

	@Override
	public void Qtydelete(int p_num) {
		sqlSession.delete(namespace+".Qtydelete", p_num);
=======
	public void insertReview(ReviewDTO reviewDTO) {
		
		sqlSession.insert(namespace+".insertReview", reviewDTO);
>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git
	}
	
	

}
