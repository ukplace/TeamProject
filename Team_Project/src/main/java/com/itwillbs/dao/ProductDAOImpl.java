package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

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
import com.itwillbs.domain.StockDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.ProductMapper";


	/* 전체 상품 검색 */
	@Override
	public List<ProductDTO> getProductList(SearchDTO searchDTO) {
		System.out.println("ProductDAOImpl - getProductList()");
		return sqlSession.selectList(namespace + ".getProductList", searchDTO);
	}

	/* 상품 총 갯수 */
	@Override
	public Integer getProductTotal(SearchDTO searchDTO) {
		System.out.println("ProductDAOImpl - getProductTotal()");
		return sqlSession.selectOne(namespace + ".getProductTotal", searchDTO);
	}
	
	
	
	@Override
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl - getProductKidsList()");
		return sqlSession.selectList(namespace + ".getProductKidsList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl - getProductWomenList()");
		return sqlSession.selectList(namespace + ".getProductWomenList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductMenList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductMenList()");
		return sqlSession.selectList(namespace+".getProductMenList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductOutdoorList()");
		return sqlSession.selectList(namespace+".getProductOutdoorList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductRunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductRunningList()");
		return sqlSession.selectList(namespace+".getProductRunningList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductSneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductSneakersList()");
		return sqlSession.selectList(namespace+".getProductSneakersList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductGentlemanList()");
		return sqlSession.selectList(namespace+".getProductGentlemanList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductLadyList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductLadyList()");
		return sqlSession.selectList(namespace+".getProductW_LadyList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_SneakersList()");
		return sqlSession.selectList(namespace+".getProductW_SneakersList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_RunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_RunningList()");
			return sqlSession.selectList(namespace+".getProductW_RunningList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductW_OutdoorList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_OutdoorList()");
		return sqlSession.selectList(namespace+".getProductW_OutdoorList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_KidList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_KidList()");
		return sqlSession.selectList(namespace+".getProductK_KidList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_RunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_RunningList()");
		return sqlSession.selectList(namespace+".getProductK_RunningList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductK_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_SneakersList()");
		return sqlSession.selectList(namespace+".getProductK_SneakersList", pageDTO);
	}
	
	@Override
	public ProductDTO productDetail(int p_num) {
		return sqlSession.selectOne(namespace+".productDetail", p_num);
	}
	
	@Override
	public List<ProductQtyDTO> productQtyDetail(int p_num) {
		return sqlSession.selectList(namespace+".productQtyDetail", p_num);
	}
	
	/* 장바구니 */
	@Override
	public void addCart(CartDTO cartDTO) {
		CartDTO cartDTO2 = new CartDTO();
		cartDTO2 = sqlSession.selectOne(namespace+".cartCheck", cartDTO);
		
		if(cartDTO2 !=null) {
			cartDTO2.setCart_count(cartDTO.getCart_count()+cartDTO2.getCart_count());
			cartDTO2.setP_size(cartDTO.getP_size());
			System.out.println("ProductDAOImpl updateCart 위한 cart_idx값 : " + cartDTO2.getCart_idx());
			System.out.println("ProductDAOImpl updateCart 위한 p_size값 : " + cartDTO2.getP_size());
			sqlSession.update(namespace+".updateCart", cartDTO2);
		}else {
			sqlSession.insert(namespace+".addCart", cartDTO);			
		}
		
		
	}

//	@Override
//	public CartDTO getCart(CartDTO cartDTO) {
//		return sqlSession.selectOne(namespace+".getCart", cartDTO);
//	}
	@Override
	public List<CartDTO> getCart(int m_idx) {
		return sqlSession.selectList(namespace + ".getCart", m_idx);
	}

	@Override
	public List<CartListDTO> getCartList(CartListDTO cartListDTO) {
		return sqlSession.selectList(namespace+".getCartList", cartListDTO);
	}

	// 회원탈퇴 전 카드삭제 
	@Override
	public void withdrawal(MemberDTO memberDTO) {
		System.out.println("idx값차트" + memberDTO.getM_idx());
		sqlSession.delete(namespace+".withdrawal", memberDTO);
	}

	@Override
	public int cartDelete(int cart_idx) {
		System.out.println("ProductDAOImpl.cartDelete()");
		 return sqlSession.delete(namespace+".cartDelete", cart_idx);
		
	}

	@Override
	public void insertO_member(Order_memberDTO o_memberDTO) {
		sqlSession.insert(namespace+".insertO_member", o_memberDTO);
	}

	@Override
	public List<Order_memberDTO> getO_idx(Order_memberDTO o_memberDTO) {
		// TODO Auto-generated method stub
		return sqlSession.selectList(namespace+".getO_idx", o_memberDTO);
	}

	@Override
	public void insertO_detail(Order_memberDTO order_memberDTO) {
		sqlSession.insert(namespace+".insertO_detail", order_memberDTO);
	}
	
	@Override	
	public void deleteCart(int m_idx) {
		System.out.println("ProductDAOImpl.deleteCart()");
		sqlSession.delete(namespace+".deleteCart1", m_idx);
		
	}

	@Override
	public List<Order_memberDTO> OneOrderList(Order_memberDTO o_memberDTO) {
		return sqlSession.selectList(namespace+".OneOrderList", o_memberDTO);
	}

	@Override
	public List<OrderListDTO> getOrderList(OrderListDTO orderListDTO) {
		return sqlSession.selectList(namespace+".getOrderList",orderListDTO);
	}

	@Override
	public StockDTO getInformation(StockDTO stockDTO) {
		return sqlSession.selectOne(namespace+".getInformation", stockDTO);
	}

	@Override
	public void changeStock(StockDTO stockDTO) {
		sqlSession.update(namespace+".changeStock", stockDTO);
	}
	@Override
	public Integer getProductGentlemanCount() {
		return sqlSession.selectOne(namespace+".getProductGentlemanCount");
	}

	@Override
	public Integer getProductOutdoorCount() {
		return sqlSession.selectOne(namespace+".getProductOutdoorCount");
	}

	@Override
	public Integer getProductRunningCount() {
		return sqlSession.selectOne(namespace+".getProductRunningCount");
	}

	@Override
	public Integer getProducSneakersCount() {
		return sqlSession.selectOne(namespace+".getProducSneakersCount");
	}

	@Override
	public Integer getProducMenCount() {
		return sqlSession.selectOne(namespace+".getProducMenCount");
	}

	
	//WOMEN 카운트
	@Override
	public Integer getProductWomenCount() {
		return sqlSession.selectOne(namespace+".getProductWomenCount");
	}

	@Override
	public Integer getProductW_OutdoorCount() {
		return sqlSession.selectOne(namespace+".getProductW_OutdoorCount");
	}

	@Override
	public Integer getProductW_RunningCount() {
		return sqlSession.selectOne(namespace+".getProductW_RunningCount");
	}

	@Override
	public Integer getProductW_SneakersCount() {
		return sqlSession.selectOne(namespace+".getProductW_SneakersCount");
	}

	@Override
	public Integer getProductLadyCount() {
		return sqlSession.selectOne(namespace+".getProductLadyCount");
	}

	//KIDS 카운트
	
	@Override
	public Integer getProductKidsCount() {
		return sqlSession.selectOne(namespace+".getProductKidsCount");
	}

	@Override
	public Integer getProductK_KidCount() {
		return sqlSession.selectOne(namespace+".getProductK_KidCount");
	}

	@Override
	public Integer getProductK_RunningCount() {
		return sqlSession.selectOne(namespace+".getProductK_RunningCount");
	}

	@Override
	public Integer getProductK_SneakersCount() {
		return sqlSession.selectOne(namespace+".getProductK_SneakersCount");
	}
	
	@Override
	public List<Order_memberDTO> AllOrderList(PageDTO pageDTO) {
		// 관리자페이지에서 전체회원 주문목록 불러오기
		System.out.println("ProductDAOImpl - AllOrderList()");
		return sqlSession.selectList(namespace + ".AllOrderList", pageDTO);
	}

	@Override
	public List<OrderListDTO> getOrderDetailList(int m_idx, int o_idx) {
		// 관리자페이지에서 주문목록 세부정보페이지 불러오기
		System.out.println("ProductDAOImpl - getOrderDetailList()");
		return sqlSession.selectList(namespace + ".getOrderDetailList", m_idx & o_idx);
	}

	@Override
	public int getAllProduct(int p_num) {
		System.out.println("ProductDAOImpl - getAllProduct()");
		return sqlSession.selectOne(namespace + ".getAllProduct", p_num);
	}


	
	
	
}
