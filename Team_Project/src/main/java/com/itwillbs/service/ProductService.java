package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

public interface ProductService {
	
	// List<ProductDTO> productKidsList = productService.getProductKidsList(pageDTO);
	public List<ProductDTO> getProductKidsList(PageDTO pageDTO);

	// List<ProductDTO> productWomenList = productService.getProductWomenList(pageDTO);
	public List<ProductDTO> getProductWomenList(PageDTO pageDTO);

	public List<ProductDTO> getProducMentList(PageDTO pageDTO);

	public List<ProductDTO> getProductOutdoorList(PageDTO pageDTO);

	public List<ProductDTO> getProductRunningList(PageDTO pageDTO);

	public List<ProductDTO> getProducSneakersList(PageDTO pageDTO);

	public List<ProductDTO> getProductGentlemanList(PageDTO pageDTO);

}
