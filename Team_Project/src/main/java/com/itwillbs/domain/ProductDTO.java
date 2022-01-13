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
p_thumImg varchar(500),
p_color varchar(45),
p_price int not null,
p_discount int default 0,
p_date timestamp default now() not null
);

*/


public class ProductDTO {

	private int p_num;
	private String p_name;
	private String p_explain;
	private	String p_category;
	private	String p_small_category;
	private String p_img;
	private String p_thumImg;
	private String p_color;
	private int p_price;
	private int p_discount;
	private Timestamp p_date;
	
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
	public String getP_thumImg() {
		return p_thumImg;
	}
	public void setP_thumImg(String p_thumImg) {
		this.p_thumImg = p_thumImg;
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
	public Timestamp getP_date() {
		return p_date;
	}
	public void setP_date(Timestamp p_date) {
		this.p_date = p_date;
	}
	@Override
	public String toString() {
		return "ProductDTO [p_num=" + p_num + ", p_name=" + p_name + ", p_explain=" + p_explain + ", p_category="
				+ p_category + ", p_small_category=" + p_small_category + ", p_img=" + p_img + ", p_thumImg="
				+ p_thumImg + ", p_color=" + p_color + ", p_price=" + p_price + ", p_discount=" + p_discount
				+ ", p_date=" + p_date + "]";
	}
	
	
	
}
