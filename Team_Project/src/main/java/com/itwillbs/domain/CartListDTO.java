package com.itwillbs.domain;

/*
create table cart (
cart_idx int primary key auto_increment,
m_idx int,
p_num int,
cart_count int,
foreign key (m_idx) references member (m_idx),
foreign key (p_num) references product (p_num)
);
 */

public class CartListDTO {
	
	private int cart_idx;
	private int m_idx;
	private int p_num;
	private int cart_count;
	private String p_name;
	private int p_price;
	private String p_thumImg;
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
	
	
}
