package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminDAO;
import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

@Service
public class AdminServiceImpl implements AdminService {
	// 객체생성
	@Inject
	private MemberDAO memberDAO;
	
	@Inject
	private AdminDAO adminDAO;
	
	
	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {

		return memberDAO.userCheck(memberDTO);
	}


	@Override
	public void insertProduct(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - insertProduct()");
		adminDAO.insertProduct(productDTO);
	}

	@Override
	public List<ProductDTO> getProductList(PageDTO pageDTO) {
		System.out.println("AdminServiceImpl - getProductList()");
		// 계산된  것 => pageSize, pageNum
		// 구해야할 것 => currentPage, startRow, endRow 계산!
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		// DB에서 startRow-1 작업을 해줘야함!
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		
		return adminDAO.getProductList(pageDTO);
	}

	@Override
	public Integer getProductCount() {
		System.out.println("AdminServiceImpl - getProductCount()");
		return adminDAO.getProductCount();
	}


	@Override
	public void updateProduct(ProductDTO productDTO) {
		System.out.println("AdminServiceImpl - updateProduct()");
		adminDAO.updateProduct(productDTO);
	}




}
