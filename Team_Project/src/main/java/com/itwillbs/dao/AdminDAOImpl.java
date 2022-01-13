package com.itwillbs.dao;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.Order_memberDTO;
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
		// 이전 admincontroller 에서 담아준 dto를 가지고 와서
		// 물론 지금은 qty_update에서 3번이라고 고정하고 제품수량을 추가해주지만 추후 
		// +버튼을 통해 유동적으로 데이터를 넣어줄것을 대비
		// dto.getList()의 크기만큼 반복해서 
		// 데이터를 가져와 p_size와, p_stock에 넣어주고
		// 그 데이터를 List.size() 만큼 반복해준다. 
		// 아래코드 참조
		for(int i = 0; i < dto.getList().size(); i++) {
			System.out.println(dto.getP_num() + " : qty p_num");
			
			dto.setP_size(dto.getList().get(i).getP_size());
			System.out.println(dto.getP_size());
			dto.setP_stock(dto.getList().get(i).getP_stock());
			System.out.println(dto.getP_stock());
			
				sqlSession.insert(namespace + ".insertQty", dto);
		}
		
	}

	@Override
	public List<ProductQtyDTO> getQtyList(int p_num) {
		return sqlSession.selectList(namespace+".getQtyList", p_num);
	}
	
	@Override
	public void updateQty(ProductQtyDTO dto) {
		// insertQty와 과정이 동일함 
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
	public int getNewOrder() {
		return sqlSession.selectOne(namespace+".getNewOrder");
	}

	@Override
	public int getDelivery() {
		return sqlSession.selectOne(namespace+".getDelivery");
	}

	@Override
	public int getDone() {
		return sqlSession.selectOne(namespace+".getDone");
	}
	
	@Override
	public List<ReviewDTO> getPnum(int p_num) {
		
		return sqlSession.selectList(namespace+".getPnum", p_num);
	}

	@Override
	public List<Order_memberDTO> getOrderList() {
		return sqlSession.selectList(namespace+".getOrderList");
	}

	@Override
	public List<Integer> getWeekOrderList() {
		List<Integer> totalSum = new ArrayList<Integer>();
		
		for(int p_num=0; p_num<7; p_num++ ) {
			int total = sqlSession.selectOne(namespace+".getWeekOrderList", p_num);
			totalSum.add(p_num, total); 
		}
		System.out.println(totalSum);
		
		return totalSum;
	}

	@Override
	public int getOrder_memberCount() {
		return sqlSession.selectOne(namespace + ".getOrder_memberCount");
	}


	

	
	

}
