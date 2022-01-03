package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductDAO;
import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.MemberDTO;
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
		return productDAO.getProductKidsList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl - getProductWomenList()");
		return productDAO.getProductWomenList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProducMentList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducMentList()");
		return productDAO.getProductMenList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductOutdoorList()");
		return productDAO.getProductOutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductRunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductRunningList()");
		return productDAO.getProductRunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProducSneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducSneakersList()");
		return productDAO.getProductSneakersList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductGentlemanList()");
		return productDAO.getProductGentlemanList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductLadyList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductLadyList()");
		return productDAO.getProductLadyList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_SneakersList()");
		return productDAO.getProductW_SneakersList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_RunningList()");
		return productDAO.getProductW_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_OutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_OutdoorList()");
		return productDAO.getProductW_OutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_KidList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_KidList()");
		return productDAO.getProductK_KidList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_RunningList()");
		return productDAO.getProductK_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_SneakersList()");
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
	

	@Override
	public void addCart(CartDTO cartDTO) {

		productDAO.addCart(cartDTO);
	}

	@Override
	public CartDTO getCart(CartDTO cartDTO) {
		return productDAO.getCart(cartDTO);
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

	
	

	
	
}
