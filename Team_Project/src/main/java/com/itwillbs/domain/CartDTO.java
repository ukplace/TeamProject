package com.itwillbs.domain;

/*
create table cart (
cart_idx int primary key auto_increment,
m_idx int,
p_num int,
cart_count int,
p_size varchar(45),
foreign key (m_idx) references member (m_idx),
foreign key (p_num) references product (p_num)
);
 */

public class CartDTO {

	private int cart_idx;
	private int m_idx;
	private int p_num;
	private int cart_count;

	// cart 테이블에 p_size 컬럼 추가
	private String p_size;

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

	// p_size Getter/Setter 추가
	public String getP_size() {
		return p_size;
	}

	public void setP_size(String p_size) {
		this.p_size = p_size;
	}

	@Override
	public String toString() {
		return "CartDTO [cart_idx=" + cart_idx + ", m_idx=" + m_idx + ", p_num=" + p_num + ", cart_count=" + cart_count
				+ ", p_size=" + p_size + "]";
	}

}
