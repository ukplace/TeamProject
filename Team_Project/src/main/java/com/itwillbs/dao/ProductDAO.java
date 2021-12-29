package com.itwillbs.dao;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

public interface ProductDAO {

	// List<ProductDTO> productList = productService.getProductList(pageDTO);
	public List<ProductDTO> getProductList(PageDTO pageDTO);
	
	// List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO);
	
	// List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO);

	public List<ProductDTO> getProductMenList(PageDTO pageDTO);

	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductRunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductSneakersList(PageDTO pageDTO);

	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO);

	public List<ProductDTO> getProductLadyList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_SneakersList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_RunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductW_OutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_KidList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_RunningList(PageDTO pageDTO);

	public List<ProductDTO> getProductK_SneakersList(PageDTO pageDTO);
	

}
