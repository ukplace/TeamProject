package com.itwillbs.domain;

import java.util.List;

public class OrderPageDTO { // OrderPageItemDTO의 객체를 요소로 가지는 List타입 변수를 가지는 클래스
	
	private List<OrderPageItemDTO> orders;

	// Getter/Setter 메서드 선언
	public List<OrderPageItemDTO> getOrders() {
		return orders;
	}

	public void setOrders(List<OrderPageItemDTO> orders) {
		this.orders = orders;
	}

	// toSting 메서드 선언
	@Override
	public String toString() {
		return "OrderPageDTO [orders=" + orders + "]";
	}
	

}
