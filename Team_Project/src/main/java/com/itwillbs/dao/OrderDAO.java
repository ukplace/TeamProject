package com.itwillbs.dao;

import com.itwillbs.domain.OrderPageItemDTO;

public interface OrderDAO {

	/* 주문상품정보 DB로부터 요청하는 메서드 선언 */
	public OrderPageItemDTO getProductInfo(int p_num);

}
