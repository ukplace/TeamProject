package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.CartDTO;
import com.itwillbs.domain.CartListDTO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.ProductQtyDTO;
import com.itwillbs.domain.ProductDTO;
import com.itwillbs.domain.SearchDTO;

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
	

	@Override
	public void addCart(CartDTO cartDTO) {
		CartDTO cartDTO2 = new CartDTO();
		cartDTO2 = sqlSession.selectOne(namespace+".cartCheck", cartDTO);
		
		if(cartDTO2 !=null) {
			cartDTO2.setCart_count(cartDTO.getCart_count()+cartDTO2.getCart_count());
			System.out.println(cartDTO2.getCart_idx());
			sqlSession.update(namespace+".updateCart", cartDTO2);
		}else {
			sqlSession.insert(namespace+".addCart", cartDTO);			
		}
		
		
	}

	@Override
	public CartDTO getCart(CartDTO cartDTO) {
		return sqlSession.selectOne(namespace+".getCart", cartDTO);
	}

	@Override
	public List<CartListDTO> getCartList(CartListDTO cartListDTO) {
		return sqlSession.selectList(namespace+".getCartList", cartListDTO);
	}


	
	
	
}
