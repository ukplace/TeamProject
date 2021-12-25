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
	
	
	
}
