package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderListDTO;
import com.itwillbs.domain.Order_detailDTO;
import com.itwillbs.domain.Order_memberDTO;
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
	
	/* 장바구니 */
	public void addCart(CartDTO cartDTO);

//	public CartDTO getCart(CartDTO cartDTO);
	public List<CartDTO> getCart(int m_idx);

	public List<CartListDTO> getCartList(CartListDTO cartListDTO);

	public void withdrawal(MemberDTO memberDTO);

	public int cartDelete(int cart_idx);

	public void insertO_member(Order_memberDTO o_memberDTO);

	public List<Order_memberDTO> getO_idx(Order_memberDTO o_memberDTO);

	public void insertO_detail(Order_memberDTO order_memberDTO);
	
	public void deleteCart(int m_idx);
	
	public List<Order_memberDTO> OneOrderList(Order_memberDTO o_memberDTO);

	public List<OrderListDTO> getOrderList(OrderListDTO orderListDTO);
	
	public List<Order_memberDTO> AllOrderList(PageDTO pageDTO);
	
	// List<OrderListDTO> orderDetailList = productService.getOrderDetailList(m_idx, o_idx);
	public List<OrderListDTO> getOrderDetailList(int m_idx, int o_idx);
	

	//MEN 카운트
	
	public Integer getProductGentlemanCount();
	
	public Integer getProductOutdoorCount();
	
	public Integer getProductRunningCount();
	
	public Integer getProducSneakersCount();
	
	public Integer getProducMenCount();
	
	//WOMEN 카운트
	
	public Integer getProductWomenCount();
	
	public Integer getProductW_OutdoorCount();
	
	public Integer getProductW_RunningCount();
	
	public Integer getProductW_SneakersCount();
	
	public Integer getProductLadyCount();

	//KIDS 카운트
	
	public Integer getProductKidsCount();
	
	public Integer getProductK_KidCount();
	
	public Integer getProductK_RunningCount();
	
	public Integer getProductK_SneakersCount();
	
	

}
