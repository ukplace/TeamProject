package com.itwillbs.domain;

import java.sql.Timestamp;




public class ProductDTO {
	
	private int p_num;
	private String p_name;
	private String p_explain;
	private	String p_category;
	private	String p_small_category;
	private String p_image;
	private String p_size;
	private String p_color;
	private int p_price;
	private int p_discount;
	private String p_sellyn;
	private int p_stcok;
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
	public String getP_image() {
		return p_image;
	}
	public void setP_image(String p_image) {
		this.p_image = p_image;
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
	public int getP_stcok() {
		return p_stcok;
	}
	public void setP_stcok(int p_stcok) {
		this.p_stcok = p_stcok;
	}
	public Timestamp getP_date() {
		return p_date;
	}
	public void setP_date(Timestamp p_date) {
		this.p_date = p_date;
	}
	
	
	
}
