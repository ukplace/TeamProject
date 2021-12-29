package com.itwillbs.domain;

import java.sql.Timestamp;
/*
create table qna (
qna_idx int auto_increment,
m_idx int, 
qna_name varchar(45) not null,  
qna_subject varchar(45) not null,
qna_content varchar(500) not null,
qna_type varchar(45) not null,
qna_re_ref int,
qna_re_lev int,
qna_re_seq int,
qna_date datetime default now() not null,
foreign key (m_idx) references member (m_idx),
constraint table_qna_pk primary key(qna_idx, qna_name)
);
*/

public class QnaDTO {
	
	private int qna_idx;
	private int m_idx;
	private String qna_name;
	private String qna_subject;
	private String qna_content;
	private String qna_type;
	private int qna_re_ref;
	private int qna_re_lev;
	private int qna_re_seq;
	private Timestamp qna_date;
	
	
	public int getQna_idx() {
		return qna_idx;
	}
	public void setQna_idx(int qna_idx) {
		this.qna_idx = qna_idx;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getQna_name() {
		return qna_name;
	}
	public void setQna_name(String qna_name) {
		this.qna_name = qna_name;
	}
	public String getQna_subject() {
		return qna_subject;
	}
	public void setQna_subject(String qna_subject) {
		this.qna_subject = qna_subject;
	}
	public String getQna_content() {
		return qna_content;
	}
	public void setQna_content(String qna_content) {
		this.qna_content = qna_content;
	}
	public String getQna_type() {
		return qna_type;
	}
	public void setQna_type(String qna_type) {
		this.qna_type = qna_type;
	}
	public int getQna_re_ref() {
		return qna_re_ref;
	}
	public void setQna_re_ref(int qna_re_ref) {
		this.qna_re_ref = qna_re_ref;
	}
	public int getQna_re_lev() {
		return qna_re_lev;
	}
	public void setQna_re_lev(int qna_re_lev) {
		this.qna_re_lev = qna_re_lev;
	}
	public int getQna_re_seq() {
		return qna_re_seq;
	}
	public void setQna_re_seq(int qna_re_seq) {
		this.qna_re_seq = qna_re_seq;
	}
	public Timestamp getQna_date() {
		return qna_date;
	}
	public void setQna_date(Timestamp qna_date) {
		this.qna_date = qna_date;
	}
	
	
}
