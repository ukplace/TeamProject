package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

public interface AdminService {

	MemberDTO userCheck(MemberDTO memberDTO);
	
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

	
	// -------회원정보관리-------------
	public List<MemberDTO> getMemberList(PageDTO pageDTO);

	public int getMemberCount();

	public MemberDTO getMemberDetail(MemberDTO memberDTO);
	
	public void updateMember(MemberDTO memberDTO);
	
	public void deleteMember(int m_idx);
	
	
}
