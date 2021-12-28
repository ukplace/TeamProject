package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProductDAO;
import com.itwillbs.domain.PageDTO;
import com.itwillbs.domain.ProductDTO;

@Service
public class ProductServiceImpl implements ProductService {
	
	@Inject
	private ProductDAO productDAO;

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
	
	

	
	
}
