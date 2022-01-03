package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.OrderDAO;
import com.itwillbs.domain.OrderPageItemDTO;

@Service
public class OrderServiceImpl implements OrderService {
	
	@Inject
	private OrderDAO orderDAO;

	@Override
	public OrderPageItemDTO getProductInfo(int p_num) {
		System.out.println("OrderServiceImpl - getProductInfo()");
		
		return null;
	}

}
