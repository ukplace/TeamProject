package com.itwillbs.domain;

import java.sql.Timestamp;

public class Order_memberDTO {
/*
create table order_member (
o_idx int primary key auto_increment, 
m_idx int,
o_name varchar(45) not null,
o_tel varchar(45) not null,
o_zip varchar(45) not null,
o_address varchar(45) not null,
o_detail_address varchar(45) not null,
o_memo varchar(45),
totalSum int,
o_state varchar(45) not null default 0,
o_date timestamp default now() not null,
foreign key (m_idx) references member (m_idx)
);
 */
	private int o_idx;
	private int m_idx;
	private String o_name;
	private String o_tel;
	private String o_zip;
	private String o_address;
	private String o_detail_address;
	private String o_memo;
	private String o_state;
	private int totalSum;
	private Timestamp o_date;
	
	public int getTotalSum() {
		return totalSum;
	}
	public void setTotalSum(int totalSum) {
		this.totalSum = totalSum;
	}
	
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
	public Timestamp getO_date() {
		return o_date;
	}
	public void setO_date(Timestamp o_date) {
		this.o_date = o_date;
	}
	
	
}
