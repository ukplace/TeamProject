package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTObefore;
import com.itwillbs.domain.SearchDTO;

public interface ProductDAO {

	// 전체 상품 검색
	// List<ProductDTO> productList = productService.getProductList(pageDTO);
	public List<ProductDTObefore> getProductList(SearchDTO searchDTO);

	// 상품 총 개수  **파라미터 값 수정
	public Integer getProductTotal(SearchDTO searchDTO);
	
	// List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
	public List<ProductDTObefore> getProductKidsList(PageDTO pageDTO);
	
	// List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
	public List<ProductDTObefore> getProductWomenList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductMenList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductOutdoorList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductRunningList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductSneakersList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductGentlemanList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductLadyList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductW_SneakersList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductW_RunningList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductW_OutdoorList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductK_KidList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductK_RunningList(PageDTO pageDTO);

	public List<ProductDTObefore> getProductK_SneakersList(PageDTO pageDTO);
	
	public ProductDTObefore productDetail(int p_num);

}
