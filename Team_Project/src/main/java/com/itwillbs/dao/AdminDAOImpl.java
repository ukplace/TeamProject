package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;

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


	// product_qty 값 추가/삭제
	@Override
	public void insertQty(ProductQtyDTO dto) {
		
		for(int i = 0; i < dto.getList().size(); i++) {
			System.out.println(dto.getP_num() + " : qty p_num");
			
			dto.setP_size(dto.getList().get(i).getP_size());
			System.out.println(dto.getP_size());
			dto.setP_stock(dto.getList().get(i).getP_stock());
			System.out.println(dto.getP_stock());
			
//			String p_size = sqlSession.selectOne(namespace + ".checkQty", dto.getList().get(i).getP_num());
			
//			if(p_size == null) {
				sqlSession.insert(namespace + ".insertQty", dto);
//			} else if(p_size == dto.getList().get(i).getP_size()) {
//				sqlSession.update(namespace + ".updateQty", dto);
//			}
		}
		
	}

	@Override
	public List<ProductQtyDTO> getQtyList(int p_num) {
		return sqlSession.selectList(namespace+".getQtyList", p_num);
	}
	
	@Override
	public void updateQty(ProductQtyDTO dto) {

		for(int i = 0; i < dto.getList().size(); i++) {
			System.out.println(dto.getP_num() + " : qty p_num");
			
			dto.setP_size(dto.getList().get(i).getP_size());
			System.out.println(dto.getP_size());
			dto.setP_stock(dto.getList().get(i).getP_stock());
			System.out.println(dto.getP_stock());
			
		sqlSession.update(namespace + ".updateQty", dto);
		}
	}

	@Override
	public void deleteQty(int p_num) {
		sqlSession.delete(namespace + ".deleteQty", p_num);
	}
	
	
	@Override
	public void insertReview(ReviewDTO reviewDTO) {
		
		sqlSession.insert(namespace+".insertReview", reviewDTO);
	}
	
	@Override
	public void updateMember(MemberDTO memberDTO) {
		sqlSession.selectOne(namespace+".updateMember", memberDTO);
	}

	@Override
	public void deleteMember(int m_idx) {
		 sqlSession.selectOne(namespace+".deleteMember", m_idx);
	}

	@Override
	public List<ReviewDTO> getReviewList(PageDTO pageDTO) {
		System.out.println("리뷰-dao");
		return sqlSession.selectList(namespace+".getReviewList", pageDTO);
	}

	@Override
	public int getNewOrder(int o_idx) {
		return sqlSession.selectOne(namespace+".getNewOrder", o_idx);
	}

	@Override
	public int getDelivery(int o_idx) {
		return sqlSession.selectOne(namespace+".getDelivery", o_idx);
	}

	@Override
	public int getDone(int o_idx) {
		return sqlSession.selectOne(namespace+".getDone", o_idx);
	}
	
	@Override
	public List<ReviewDTO> getPnum(int p_num) {
		
		return sqlSession.selectList(namespace+".getPnum", p_num);
	}


	

	
	

}
