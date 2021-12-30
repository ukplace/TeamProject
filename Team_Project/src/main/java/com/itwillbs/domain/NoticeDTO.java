package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table notice (
notice_idx int primary key auto_increment,
notice_subject varchar(500) not null,
notice_content varchar(500) not null,
notice_date timestamp default now() not null
);

*/
public class NoticeDTO {
	
	private int notice_idx;
	private String notice_subject;
	private String notice_content;
	private Timestamp notice_date;
	
	public int getNotice_idx() {
		return notice_idx;
	}
	public void setNotice_idx(int notice_idx) {
		this.notice_idx = notice_idx;
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
	public Timestamp getNotice_date() {
		return notice_date;
	}
	public void setNotice_date(Timestamp notice_date) {
		this.notice_date = notice_date;
	}
	
	

}
