package com.itwillbs.domain;

import java.util.List;

/*
create table product_qty (
p_num int references product (p_num),
p_size varchar(45) not null default '0',
p_stock int not null default 0
);

create table product_size (
p_num int references product (p_num),
'220' varchar(45),
'230' varchar(45),
'240' varchar(45),
'250' varchar(45),
'260' varchar(45),
'270' varchar(45),
'280' varchar(45)
);


 */

public class ProductQtyDTO {
	
	private int p_num;
	private String p_size;
	private int p_stock;
	private List<ProductQtyDTO> list;
	
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
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public List<ProductQtyDTO> getList() {
		return list;
	}
	public void setList(List<ProductQtyDTO> list) {
		this.list = list;
	}
	

}
