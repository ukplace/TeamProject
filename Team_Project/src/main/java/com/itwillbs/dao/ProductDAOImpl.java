package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

@Repository
public class ProductDAOImpl implements ProductDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mapper.ProductMapper";

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
		return sqlSession.selectList(namespace+"getProductSneakersList", pageDTO);
	}

	@Override
	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductDAOImpl.getProductGentlemanList()");
		return sqlSession.selectList(namespace+".getProductGentlemanList", pageDTO);
	}

	
	
	
}
