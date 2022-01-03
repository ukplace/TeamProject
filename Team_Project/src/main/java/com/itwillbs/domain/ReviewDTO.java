package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table review (
review_idx int primary key auto_increment,
p_num int,
m_idx int,
review_subject varchar(45) not null,
review_content varchar(500) not null,
review_img varchar(500),
review_score int,
review_like int,
review_date timestamp default now() not null,
foreign key (p_num) references product (p_num),
foreign key (m_idx) references member (m_idx)
);

 */

public class ReviewDTO {
	private int review_idx;
	private int p_num;
	private int m_idx;
	private String review_subject;
	private String review_content;
	private String review_img;
	private int review_score;
	private int review_like;
	private Timestamp review_date;
	
	public int getReview_idx() {
		return review_idx;
	}
	public void setReview_idx(int review_idx) {
		this.review_idx = review_idx;
	}
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getM_idx() {
		return m_idx;
	}
	public void setM_idx(int m_idx) {
		this.m_idx = m_idx;
	}
	public String getReview_subject() {
		return review_subject;
	}
	public void setReview_subject(String review_subject) {
		this.review_subject = review_subject;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_img() {
		return review_img;
	}
	public void setReview_img(String review_img) {
		this.review_img = review_img;
	}
	public int getReview_score() {
		return review_score;
	}
	public void setReview_score(int review_score) {
		this.review_score = review_score;
	}
	public int getReview_like() {
		return review_like;
	}
	public void setReview_like(int review_like) {
		this.review_like = review_like;
	}
	public Timestamp getReview_date() {
		return review_date;
	}
	public void setReview_date(Timestamp review_date) {
		this.review_date = review_date;
	}
	
	
	
	
}
