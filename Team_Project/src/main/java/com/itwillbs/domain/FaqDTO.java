package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table faq (
faq_idx int primary key auto_increment,
faq_subject varchar(45) not null,
faq_question varchar(500) not null,
faq_answer varchar(500) not null,
faq_date timestamp default now() not null
);


 */

public class FaqDTO {
	
	private int faq_idx;
	private String faq_subject;
	private String faq_question;
	private String faq_answer;
	private Timestamp faq_date;
	public int getFaq_idx() {
		return faq_idx;
	}
	public void setFaq_idx(int faq_idx) {
		this.faq_idx = faq_idx;
	}
	public String getFaq_subject() {
		return faq_subject;
	}
	public void setFaq_subject(String faq_subject) {
		this.faq_subject = faq_subject;
	}
	public String getFaq_question() {
		return faq_question;
	}
	public void setFaq_question(String faq_question) {
		this.faq_question = faq_question;
	}
	public String getFaq_answer() {
		return faq_answer;
	}
	public void setFaq_answer(String faq_answer) {
		this.faq_answer = faq_answer;
	}
	public Timestamp getFaq_date() {
		return faq_date;
	}
	public void setFaq_date(Timestamp faq_date) {
		this.faq_date = faq_date;
	}
	@Override
	public String toString() {
		return "FaqDTO [faq_idx=" + faq_idx + ", faq_subject=" + faq_subject + ", faq_question=" + faq_question
				+ ", faq_answer=" + faq_answer + ", faq_date=" + faq_date + "]";
	}
	
	
	

}
