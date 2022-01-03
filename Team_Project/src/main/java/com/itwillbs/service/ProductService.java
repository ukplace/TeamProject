package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.SearchDTO;

public interface ProductService {
	
	// 전체 상품 검색 **파라미터 값 수정
	// List<ProductDTO> productList = productService.getProductList(pageDTO);
	public List<ProductDTO> getProductList(SearchDTO searchDTO);
	
	// 상품 총 개수  **파라미터 값 수정
	public Integer getProductTotal(SearchDTO searchDTO);
	
	// List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO);

	// List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO);

	public List<ProductDTO> getProducMentList(PageDTO pageDTO);

	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductRunningList(PageDTO pageDTO);

	public List<ProductDTO> getProducSneakersList(PageDTO pageDTO);

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
	
	
	public void addCart(CartDTO cartDTO);

	public CartDTO getCart(CartDTO cartDTO);

	public List<CartListDTO> getCartList(CartListDTO cartListDTO);

	public void withdrawal(MemberDTO memberDTO);

	public int cartDelete(int cart_idx);

}
