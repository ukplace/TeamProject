package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTObefore;
import com.itwillbs.domain.SearchDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.ProductMapper";


	/* 전체 상품 검색 */
	@Override
	public List<ProductDTObefore> getProductList(SearchDTO searchDTO) {
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
	public List<ProductDTObefore> getProductKidsList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl - getProductKidsList()");
		return sqlSession.selectList(namespace + ".getProductKidsList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductWomenList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl - getProductWomenList()");
		return sqlSession.selectList(namespace + ".getProductWomenList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductMenList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductMenList()");
		return sqlSession.selectList(namespace+".getProductMenList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductOutdoorList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductOutdoorList()");
		return sqlSession.selectList(namespace+".getProductOutdoorList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductRunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductRunningList()");
		return sqlSession.selectList(namespace+".getProductRunningList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductSneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductSneakersList()");
		return sqlSession.selectList(namespace+".getProductSneakersList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductGentlemanList()");
		return sqlSession.selectList(namespace+".getProductGentlemanList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductLadyList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductLadyList()");
		return sqlSession.selectList(namespace+".getProductW_LadyList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_SneakersList()");
		return sqlSession.selectList(namespace+".getProductW_SneakersList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_RunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_RunningList()");
			return sqlSession.selectList(namespace+".getProductW_RunningList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_OutdoorList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductW_OutdoorList()");
		return sqlSession.selectList(namespace+".getProductW_OutdoorList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_KidList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_KidList()");
		return sqlSession.selectList(namespace+".getProductK_KidList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_RunningList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_RunningList()");
		return sqlSession.selectList(namespace+".getProductK_RunningList", pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductK_SneakersList()");
		return sqlSession.selectList(namespace+".getProductK_SneakersList", pageDTO);
	}

	@Override
	public ProductDTObefore productDetail(int p_num) {
		return sqlSession.selectOne(namespace+".productDetail", p_num);
	}


	
	
	
}
