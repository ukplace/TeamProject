package com.itwillbs.domain;

public class Order_detailDTO {
/*
create table order_detail (
od_idx int primary key auto_increment,
o_idx int,
m_idx int,
p_num int,
cart_count int not null,
o_size varchar(45),
foreign key (o_idx) references order_member (o_idx),
foreign key (p_num) references product (p_num)
);
 */
	private int od_idx;
	private int o_idx;
	private int m_idx;
	private int p_num;
	private int cart_count;
	private String o_size;
	
	public int getOd_idx() {
		return od_idx;
	}
	public void setOd_idx(int od_idx) {
		this.od_idx = od_idx;
	}
	public int getO_idx() {
		return o_idx;
	}
	public void setO_idx(int o_idx) {
		this.o_idx = o_idx;
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
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getO_size() {
		return o_size;
	}
	public void setO_size(String o_size) {
		this.o_size = o_size;
	}
	@Override
	public String toString() {
		return "Order_detailDTO [od_idx=" + od_idx + ", o_idx=" + o_idx + ", m_idx=" + m_idx + ", p_num=" + p_num
				+ ", cart_count=" + cart_count + ", o_size=" + o_size + "]";
	}
	
	
}
