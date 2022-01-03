package com.itwillbs.service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.OrderDAO;
import com.itwillbs.domain.MemberDTO;
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

	@Override
	public MemberDTO getMemberInfo(int m_idx) {
		System.out.println("OrderServiceImpl - getMemberInfo()");
		
		
		return null;
	}

	@Override
	public List<OrderPageItemDTO> getOrdersInfo(List<OrderPageItemDTO> orders) {
		System.out.println("OrderServiceImpl - getOrdersInfo()");
		return null;
	}

}
