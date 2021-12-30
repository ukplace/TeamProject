package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTObefore;
import com.itwillbs.domain.SearchDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	private ProductDAO productDAO;

	
	/* 전체 상품 검색 */
	@Override
	public List<ProductDTObefore> getProductList(SearchDTO searchDTO) {
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
	public List<ProductDTObefore> getProductKidsList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl - getProductKidsList()");
		return productDAO.getProductKidsList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductWomenList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl - getProductWomenList()");
		return productDAO.getProductWomenList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProducMentList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducMentList()");
		return productDAO.getProductMenList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductOutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductOutdoorList()");
		return productDAO.getProductOutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductRunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductRunningList()");
		return productDAO.getProductRunningList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProducSneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProducSneakersList()");
		return productDAO.getProductSneakersList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductGentlemanList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductGentlemanList()");
		return productDAO.getProductGentlemanList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductLadyList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductLadyList()");
		return productDAO.getProductLadyList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_SneakersList()");
		return productDAO.getProductW_SneakersList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_RunningList()");
		return productDAO.getProductW_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductW_OutdoorList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductW_OutdoorList()");
		return productDAO.getProductW_OutdoorList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_KidList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_KidList()");
		return productDAO.getProductK_KidList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_RunningList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_RunningList()");
		return productDAO.getProductK_RunningList(pageDTO);
	}

	@Override
	public List<ProductDTObefore> getProductK_SneakersList(PageDTO pageDTO) {
		System.out.println("ProductServiceImpl.getProductK_SneakersList()");
		return productDAO.getProductK_SneakersList(pageDTO);
	}

	@Override
	public ProductDTObefore productDetail(int p_num) {
		return productDAO.productDetail(p_num);
	}

	
	

	
	
}
