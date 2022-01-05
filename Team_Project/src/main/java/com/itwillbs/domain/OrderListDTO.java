package com.itwillbs.domain;

import java.sql.Timestamp;

public class OrderListDTO {
//	, , o., o./, o. , o./,  , o. , o. , o./, d./, d./, p./, p./, p./
	private int o_idx;//
	private int m_idx;
	private String o_name;//
	private String o_tel;//
	private String o_zip;//
	private String o_address;//
	private String o_detail_address;//
	private int totalSum;//
	private Timestamp o_date;//
	private String o_size;//
	private String o_memo;//
	private String o_state;
	
	private int p_num;//
	private int cart_count;//
	
	private String p_name;//
	private String p_thumImg;//
	private int p_price;//
	
	public int getO_idx() {
		return o_idx;
	}
	public void setO_idx(int o_idx) {
		this.o_idx = o_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getO_name() {
		return o_name;
	}
	public void setO_name(String o_name) {
		this.o_name = o_name;
	}
	public String getO_tel() {
		return o_tel;
	}
	public void setO_tel(String o_tel) {
		this.o_tel = o_tel;
	}
	public String getO_zip() {
		return o_zip;
	}
	public void setO_zip(String o_zip) {
		this.o_zip = o_zip;
	}
	public String getO_address() {
		return o_address;
	}
	public void setO_address(String o_address) {
		this.o_address = o_address;
	}
	public String getO_detail_address() {
		return o_detail_address;
	}
	public void setO_detail_address(String o_detail_address) {
		this.o_detail_address = o_detail_address;
	}
	public int getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(int totalSum) {
		this.totalSum = totalSum;
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
	public String getP_thumImg() {
		return p_thumImg;
	}
	public void setP_thumImg(String p_thumImg) {
		this.p_thumImg = p_thumImg;
	}
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}
	public Timestamp getO_date() {
		return o_date;
	}
	public void setO_date(Timestamp o_date) {
		this.o_date = o_date;
	}
	public String getO_size() {
		return o_size;
	}
	public void setO_size(String o_size) {
		this.o_size = o_size;
	}
	public String getO_memo() {
		return o_memo;
	}
	public void setO_memo(String o_memo) {
		this.o_memo = o_memo;
	}
	public String getO_state() {
		return o_state;
	}
	public void setO_state(String o_state) {
		this.o_state = o_state;
	}
	
	
}
