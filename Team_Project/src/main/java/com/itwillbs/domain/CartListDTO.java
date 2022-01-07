package com.itwillbs.domain;

public class CartListDTO {
	
	private int cart_idx;
	private int m_idx;
	private int p_num;
	private int cart_count;
	private String p_name;
	private int p_price;
	private String p_thumImg;
	
	// p_size 변수 추가
	private String p_size;
	
	// direct테이블의 d_check 변수 추가
	private int d_check;
	
	public int getCart_idx() {
		return cart_idx;
	}
	public void setCart_idx(int cart_idx) {
		this.cart_idx = cart_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getCart_count() {
		return cart_count;
	}
	public void setCart_count(int cart_count) {
		this.cart_count = cart_count;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public String getP_thumImg() {
		return p_thumImg;
	}
	public void setP_thumImg(String p_thumImg) {
		this.p_thumImg = p_thumImg;
	}
	
	// p_size Getter/Setter 추가
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	
	// d_check Getter/Setter 추가
	public int getD_check() {
		return d_check;
	}
	public void setD_check(int d_check) {
		this.d_check = d_check;
	}
	
	
	
	
}
