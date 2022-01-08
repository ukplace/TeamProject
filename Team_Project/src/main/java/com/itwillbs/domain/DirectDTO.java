package com.itwillbs.domain;

/*
create table direct (
cart_idx int primary key auto_increment,
m_idx int,
p_num int,
p_size varchar(45),
cart_count int,
d_check int,
foreign key (m_idx) references member (m_idx),
foreign key (p_num) references product (p_num)
);

 */


public class DirectDTO {
	
	private int cart_idx;
	private int m_idx;
	private int p_num;
	private int cart_count;
	private String p_size;
	
	// d_check 변수 추가 (* 1 일때 -> 바로구매, 아니면 카트구매)
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

	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	public int getD_check() {
		return d_check;
	}

	public void setD_check(int d_check) {
		this.d_check = d_check;
	}
	
	
}
