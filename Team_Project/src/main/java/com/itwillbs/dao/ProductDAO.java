package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.Order_detailDTO;
import com.itwillbs.domain.Order_memberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.SearchDTO;

public interface ProductDAO {

	// 전체 상품 검색
	// List<ProductDTO> productList = productService.getProductList(pageDTO);
	public List<ProductDTO> getProductList(SearchDTO searchDTO);

	// 상품 총 개수  **파라미터 값 수정
	public Integer getProductTotal(SearchDTO searchDTO);
	
	// List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO);
	
	// List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO);

	public List<ProductDTO> getProductMenList(PageDTO pageDTO);

	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductRunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductSneakersList(PageDTO pageDTO);

	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO);

	public List<ProductDTO> getProductLadyList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_SneakersList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_RunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_OutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_KidList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_RunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_SneakersList(PageDTO pageDTO);
	
	public ProductDTO productDetail(int p_num);
	
	public List<ProductQtyDTO> productQtyDetail(int p_num);

	/* 장바구니 */
	public void addCart(CartDTO cartDTO);

//	public CartDTO getCart(CartDTO cartDTO);
	public List<CartDTO> getCart(int m_idx);

	public List<CartListDTO> getCartList(CartListDTO cartListDTO);

	public void withdrawal(MemberDTO memberDTO);

	public int cartDelete(int cart_idx);

	public void insertO_member(Order_memberDTO o_memberDTO);

	public List<Order_memberDTO> getO_idx(Order_memberDTO o_memberDTO);

	public void insertO_detail(Order_memberDTO Order_memberDTO);
	public void deleteCart(int m_idx);

}
