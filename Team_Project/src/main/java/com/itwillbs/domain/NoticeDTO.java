package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table notice (
notice_idx int primary key auto_increment,
notice_name varchar(45) not null,
notice_subject varchar(500) not null,
notice_content varchar(500) not null,
notice_readcount int,
notice_date datetime default now() not null
);

 */
public class NoticeDTO {
	
	private int notice_idx;
	private String notice_name;
	private String notice_subject;
	private String notice_content;
	private int notice_readcount;
	private Timestamp notice_date;
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
	}
	public String getNotice_name() {
		return notice_name;
	}
	public void setNotice_name(String notice_name) {
		this.notice_name = notice_name;
	}
	public String getNotice_subject() {
		return notice_subject;
	}
	public void setNotice_subject(String notice_subject) {
		this.notice_subject = notice_subject;
	}
	public String getNotice_content() {
		return notice_content;
	}
	public void setNotice_content(String notice_content) {
		this.notice_content = notice_content;
	}
	public int getNotice_readcount() {
		return notice_readcount;
	}
	public void setNotice_readcount(int notice_readcount) {
		this.notice_readcount = notice_readcount;
	}
	public Timestamp getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Timestamp notice_date) {
		this.notice_date = notice_date;
	}
	
	

}
