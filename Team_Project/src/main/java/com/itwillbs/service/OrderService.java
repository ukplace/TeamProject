package com.itwillbs.service;

import java.util.List;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.OrderPageItemDTO;

public interface OrderService {

	/* 주문상품정보 DB로부터 요청하는 메서드 선언 */
	public OrderPageItemDTO getProductInfo(int p_num);
	
	/* 주문자 주소 정보 */
	public MemberDTO getMemberInfo(int m_idx);
	
	/* 주문 정보 */
	public List<OrderPageItemDTO> getOrdersInfo(List<OrderPageItemDTO> orders);
	
}
