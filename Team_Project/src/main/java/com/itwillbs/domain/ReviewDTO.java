package com.itwillbs.domain;

import java.sql.Timestamp;

/*
create table review (
review_idx int primary key auto_increment,
p_num int references product (p_num),
m_idx int references member (m_idx),
review_subject varchar(45) not null,
review_content varchar(500) not null,
review_img varchar(500),
review_score int,
review_like int,
review_date datetime default now() not null
);
 */

public class ReviewDTO {
	int review_idx;
	int p_num;
	int m_idx;
	String review_subject;
	String review_content;
	String review_img;
	int review_score;
	int review_like;
	Timestamp review_date;
}
