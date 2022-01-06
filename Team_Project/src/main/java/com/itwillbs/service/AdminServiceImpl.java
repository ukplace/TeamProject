package com.itwillbs.service;

import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.AdminDAO;
import com.itwillbs.dao.MemberDAO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ReviewDTO;

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


	@Override
	public void deleteProduct(int p_num) {
		
		adminDAO.deleteProduct(p_num);

	}


	@Override
	public ProductDTO productView(int p_num) {
		
		return adminDAO.productView(p_num);
	}


	@Override
	public List<MemberDTO> getMemberList(PageDTO pageDTO) {
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum())); // 페이지 번호 인트형으로
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1); //글 시작 번호 정의
		pageDTO.setEndRow(pageDTO.getStartRow()+pageDTO.getPageSize()-1); // 끝페이지
		// 매퍼대신
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		
		return adminDAO.getMemberList(pageDTO);
	}


	@Override
	public int getMemberCount() {
		return adminDAO.getMemberCount();
	}


	@Override
	public MemberDTO getMemberDetail(MemberDTO memberDTO) {
		return adminDAO.getMemberDetail(memberDTO);
	}

	@Override
	public void updateMember(MemberDTO memberDTO) {
		adminDAO.updateMember(memberDTO);
	}

	@Override
	public void deleteMember(int m_idx) {
		adminDAO.deleteMember(m_idx);
	}

	// product_qty 값 추가/삭제
	@Override
	public void insertQty(ProductQtyDTO dto) {
		
		adminDAO.insertQty(dto);
	}

	@Override
	public List<ProductQtyDTO> getQtyList(int p_num) {

		return adminDAO.getQtyList(p_num);
	}

	@Override
	public void updateQty(ProductQtyDTO dto) {
		adminDAO.updateQty(dto);
	}
	
	@Override
	public void deleteQty(int p_num) {
		adminDAO.deleteQty(p_num);
	}
	
	
	@Override
	public void insertReview(ReviewDTO reviewDTO) {
		adminDAO.insertReview(reviewDTO);
	}


	@Override
	public List<ReviewDTO> getReviewList(PageDTO pageDTO) {
		System.out.println("getReviewList 서비스");
		
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1)*pageDTO.getPageSize()+1);
		pageDTO.setEndRow(pageDTO.getStartRow()+pageDTO.getPageSize()-1);
		//디비 startRow-1
		pageDTO.setStartRow(pageDTO.getStartRow()-1);
		
		return adminDAO.getReviewList(pageDTO);
	}


	@Override
	public int getNewOrder() {
		return adminDAO.getNewOrder();
	}


	@Override
	public int getDelivery() {
		return adminDAO.getDelivery();
	}


	@Override
	public int getDone() {
		return adminDAO.getDone();
	}
	
	@Override
	public List<ReviewDTO> getPnum(int p_num) {
		
		return adminDAO.getPnum(p_num);
	}







}
