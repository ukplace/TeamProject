package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;

public interface AdminDAO {
	
	// -------- 제품정보관리 --------
	// adminDAO.insertProduct(productDTO);
	public void insertProduct(ProductDTO productDTO);
	
	// List<ProductDTO> productList = adminService.getProductList(pageDTO);
	public List<ProductDTO> getProductList(PageDTO pageDTO);
	
	// pageDTO.setCount(adminService.getProductCount());
	public Integer getProductCount();

	// adminService.updateProduct(productDTO);
	public void updateProduct(ProductDTO productDTO);
	
	public ProductDTO productView(int p_num);
	
	// adminService.deleteMember(memberDTO);
	public void deleteProduct(int p_num);
	
	// -------- 회원정보관리 --------
	public List<MemberDTO> getMemberList(PageDTO pageDTO);
	
	public int getMemberCount();
	
	public MemberDTO getMemberDetail(MemberDTO memberDTO);
	
	public void updateMember(MemberDTO memberDTO);
	
	public void deleteMember(int m_idx);

	// ------ product_qty 값 추가 -------
	public void insertQty(ProductQtyDTO dto);
	
	public List<ProductQtyDTO> getQtyList(int p_num);
	
	public void updateQty(ProductQtyDTO dto);

	public void deleteQty(int p_num);
	
	
	public void insertReview(ReviewDTO reviewDTO);

	public List<ReviewDTO> getReviewList(PageDTO pageDTO);

	public int getNewOrder(int o_idx);

	public int getDelivery(int o_idx);

	public int getDone(int o_idx);
	public List<ReviewDTO> getPnum(int p_num);


}