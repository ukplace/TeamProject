package com.itwillbs.service;

import java.util.ArrayList;
import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;

public interface AdminService {

	MemberDTO userCheck(MemberDTO memberDTO);
	
	// -------- 제품정보관리 --------
	// adminService.insertProduct(productDTO);
	public void insertProduct(ProductDTO productDTO);
	
	// List<ProductDTO> productList = adminService.getProductList(pageDTO);
	public List<ProductDTO> getProductList(PageDTO pageDTO);
	
	// pageDTO.setCount(adminService.getProductCount());
	public Integer getProductCount();
	
	// adminService.updateProduct(productDTO);
	public void updateProduct(ProductDTO productDTO);
	
	public void deleteProduct(int p_num);
	
	
	public ProductDTO productView(int p_num);
	
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

	public List<ReviewDTO> getPnum(int p_num);

	
	
}
