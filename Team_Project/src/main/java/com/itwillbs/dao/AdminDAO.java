package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTObefore;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;

public interface AdminDAO {
	
	// adminDAO.insertProduct(productDTO);
	public void insertProduct(ProductDTObefore productDTO);
	
	// List<ProductDTO> productList = adminService.getProductList(pageDTO);
	public List<ProductDTObefore> getProductList(PageDTO pageDTO);
	
	// pageDTO.setCount(adminService.getProductCount());
	public Integer getProductCount();

	// adminService.updateProduct(productDTO);
	public void updateProduct(ProductDTObefore productDTO);
	
	public ProductDTObefore productView(int p_num);
	
	// adminService.deleteMember(memberDTO);
	public void deleteProduct(int p_num);
	
	public List<MemberDTO> getMemberList(PageDTO pageDTO);
	
	public int getMemberCount();
	
	public MemberDTO getMemberDetail(MemberDTO memberDTO);
	
	public void updateMember(MemberDTO memberDTO);
	
	public void deleteMember(int m_idx);

	public void updateQty(ProductQtyDTO dto);
	
	public List<ProductQtyDTO> getqtyList(int p_num);

	public void Qtydelete(int p_num);
	
	public void insertReview(ReviewDTO reviewDTO);

}