package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
<<<<<<< HEAD
import com.itwillbs.domain.ProductQtyDTO;
=======
import com.itwillbs.domain.ReviewDTO;
>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git

public interface AdminDAO {
	
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
	
	public List<MemberDTO> getMemberList(PageDTO pageDTO);
	
	public int getMemberCount();
	
	public MemberDTO getMemberDetail(MemberDTO memberDTO);

<<<<<<< HEAD
	public void updateQty(ProductQtyDTO dto);
	
	public List<ProductQtyDTO> getqtyList(int p_num);

	public void Qtydelete(int p_num);
=======
	public void insertReview(ReviewDTO reviewDTO);
>>>>>>> branch 'main' of https://github.com/ukplace/TeamProject.git

}
