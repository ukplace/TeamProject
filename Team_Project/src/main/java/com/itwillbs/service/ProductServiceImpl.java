package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductDAO;
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

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	private ProductDAO productDAO;

	
	/* 전체 상품 검색 */
	@Override
	public List<ProductDTO> getProductList(SearchDTO searchDTO) {
		System.out.println("ProductServiceImpl - getProductList()");
		return productDAO.getProductList(searchDTO);
	}
	
	/* 상품 총 갯수 */
	@Override
	public Integer getProductTotal(SearchDTO searchDTO) {
		System.out.println("ProductServiceImpl - getProductTotal()");
		return productDAO.getProductTotal(searchDTO);
	}
	
	

	@Override
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl - getProductKidsList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductKidsList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl - getProductWomenList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductWomenList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProducMentList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducMentList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductMenList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductOutdoorList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductOutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductRunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductRunningList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductRunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProducSneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducSneakersList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductSneakersList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductGentlemanList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductGentlemanList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductLadyList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductLadyList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductLadyList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_SneakersList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductW_SneakersList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_RunningList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductW_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_OutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_OutdoorList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductW_OutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_KidList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_KidList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductK_KidList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_RunningList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductK_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_SneakersList()");
		pageDTO.setCurrentPage(Integer.parseInt(pageDTO.getPageNum()));
		pageDTO.setStartRow((pageDTO.getCurrentPage()-1) * pageDTO.getPageSize() + 1);
		pageDTO.setEndRow(pageDTO.getStartRow() + pageDTO.getPageSize() - 1);
		pageDTO.setStartRow(pageDTO.getStartRow() - 1);
		return productDAO.getProductK_SneakersList(pageDTO);
	}

	@Override
	public ProductDTO productDetail(int p_num) {
		return productDAO.productDetail(p_num);
	}
	
	@Override
	public List<ProductQtyDTO> productQtyDetail(int p_num) {
		return productDAO.productQtyDetail(p_num);
	}
	
	/* 장바구니 */
	@Override
	public void addCart(CartDTO cartDTO) {

		productDAO.addCart(cartDTO);
	}

//	@Override
//	public CartDTO getCart(CartDTO cartDTO) {
//		return productDAO.getCart(cartDTO);
//	}
	@Override
	public List<CartDTO> getCart(int m_idx) {
		return productDAO.getCart(m_idx);
	}

	@Override
	public List<CartListDTO> getCartList(CartListDTO cartListDTO) {
		return productDAO.getCartList(cartListDTO);
	}

	@Override
	public void withdrawal(MemberDTO memberDTO) {
		productDAO.withdrawal(memberDTO);
	}

	@Override
	public int cartDelete(int cart_idx) {
		System.out.println("ProductServiceImpl - cartDelete()");
		return productDAO.cartDelete(cart_idx);
	}

	@Override
	public void insertO_member(Order_memberDTO o_memberDTO) {
		productDAO.insertO_member(o_memberDTO);
		
	}

	@Override
	public List<Order_memberDTO> getO_idx(Order_memberDTO o_memberDTO) {
		
		return productDAO.getO_idx(o_memberDTO);
	}

	@Override
	public void insertO_detail(Order_memberDTO order_memberDTO) {
		
		productDAO.insertO_detail(order_memberDTO);
	}
	@Override
	public void deleteCart(int m_idx) {
		System.out.println("ProductServiceImpl.deleteCart()");
		productDAO.deleteCart(m_idx);
	}

	@Override
	public List<Order_memberDTO> OneOrderList(Order_memberDTO o_memberDTO) {
		return productDAO.OneOrderList(o_memberDTO);
	}

	@Override
	public List<OrderListDTO> getOrderList(OrderListDTO orderListDTO) {
		return productDAO.getOrderList(orderListDTO);
	}

	// MEN 카운트
	
	@Override
	public Integer getProductGentlemanCount() {
		// TODO Auto-generated method stub
		return productDAO.getProductGentlemanCount();
	}

	@Override
	public Integer getProductOutdoorCount() {
		// TODO Auto-generated method stub
		return productDAO.getProductOutdoorCount();
	}

	@Override
	public Integer getProductRunningCount() {
		// TODO Auto-generated method stub
		return productDAO.getProductRunningCount();
	}

	@Override
	public Integer getProducSneakersCount() {
		// TODO Auto-generated method stub
		return productDAO.getProducSneakersCount();
	}

	@Override
	public Integer getProducMenCount() {
		// TODO Auto-generated method stub
		return  productDAO.getProducMenCount();
	}

	// WOMEN 카운트
	
	@Override
	public Integer getProductWomenCount() {
		return productDAO.getProductWomenCount();
	}

	@Override
	public Integer getProductW_OutdoorCount() {
		return productDAO.getProductW_OutdoorCount();
	}

	@Override
	public Integer getProductW_RunningCount() {
		return productDAO.getProductW_RunningCount();
	}

	@Override
	public Integer getProductW_SneakersCount() {
		return productDAO.getProductW_SneakersCount();
	}

	@Override
	public Integer getProductLadyCount() {
		return productDAO.getProductLadyCount();
	}
	
	// KIDS 카운트

	@Override
	public Integer getProductKidsCount() {
		return productDAO.getProductKidsCount();
	}

	@Override
	public Integer getProductK_KidCount() {
		return productDAO.getProductK_KidCount();
	}

	@Override
	public Integer getProductK_RunningCount() {
		return productDAO.getProductK_RunningCount();
	}

	@Override
	public Integer getProductK_SneakersCount() {
		return productDAO.getProductK_SneakersCount();
	}
	
	@Override
	public List<Order_memberDTO> AllOrderList(PageDTO pageDTO) {
		// 관리자페이지에서 전체회원 주문목록 불러오기
		System.out.println("ProductServiceImpl - AllOrderList()");
		return productDAO.AllOrderList(pageDTO);
	}

	@Override
	public List<OrderListDTO> getOrderDetailList(int m_idx, int o_idx) {
		// 관리자페이지에서 주문목록 세부정보페이지 불러오기
		System.out.println("ProductServiceImpl - getOrderDetailList()");
		return productDAO.getOrderDetailList(m_idx, o_idx);
	}

	@Override
	public int getAllProduct(int p_num) {
		return productDAO.getAllProduct(p_num);
	}

	
	

	
	
}
