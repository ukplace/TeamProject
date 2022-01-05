package com.itwillbs.domain;

import java.util.List;

public class StockDTO {

	private int p_num;
	private String p_size;
	private int cart_count;
	private int m_idx;
	private int p_stock;
	private List<StockDTO> stock;
	
	public List<StockDTO> getStock() {
		return stock;
	}
	public void setStock(List<StockDTO> stock) {
		this.stock = stock;
	}
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	
	
}
