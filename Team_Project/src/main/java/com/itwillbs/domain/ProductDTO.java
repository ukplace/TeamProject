package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table product (
p_num int primary key auto_increment,
p_name varchar(45) not null,
p_explain varchar(500) not null,
p_category varchar(45) not null,
p_small_category varchar(45) not null,
p_img varchar(500),
p_size varchar(45),
p_price int,
p_discount int default 0,
p_sellyn varchar(1) default 'Y',
p_stock int,
p_date datetime default now() not null,
p_thumImg varchar(500)
);

// p_thumImg 컬럼 추가! 상품목록에 이미지 썸네일로 나오기 위한 컬럼
// p_color varchar(45) 컬럼 뺌!

 */


public class ProductDTO {
	
	private int p_num;
	private String p_name;
	private String p_explain;
	private	String p_category;
	private	String p_small_category;
	private String p_img;
	private String p_size;
	private String p_color;
	private int p_price;
	private int p_discount;
	private String p_sellyn;
	private int p_stock;
	private Timestamp p_date;
	private String p_thumImg;
	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_explain() {
		return p_explain;
	}
	public void setP_explain(String p_explain) {
		this.p_explain = p_explain;
	}
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	public String getP_small_category() {
		return p_small_category;
	}
	public void setP_small_category(String p_small_category) {
		this.p_small_category = p_small_category;
	}
	public String getP_img() {
		return p_img;
	}
	public void setP_img(String p_img) {
		this.p_img = p_img;
	}
	public String getP_size() {
		return p_size;
	}
	public void setP_size(String p_size) {
		this.p_size = p_size;
	}
	public String getP_color() {
		return p_color;
	}
	public void setP_color(String p_color) {
		this.p_color = p_color;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public int getP_discount() {
		return p_discount;
	}
	public void setP_discount(int p_discount) {
		this.p_discount = p_discount;
	}
	public String getP_sellyn() {
		return p_sellyn;
	}
	public void setP_sellyn(String p_sellyn) {
		this.p_sellyn = p_sellyn;
	}
	public int getP_stock() {
		return p_stock;
	}
	public void setP_stock(int p_stock) {
		this.p_stock = p_stock;
	}
	public Timestamp getP_date() {
		return p_date;
	}
	public void setP_date(Timestamp p_date) {
		this.p_date = p_date;
	}
	public String getP_thumImg() {
		return p_thumImg;
	}
	public void setP_thumImg(String p_thumImg) {
		this.p_thumImg = p_thumImg;
	}
	
	
}
