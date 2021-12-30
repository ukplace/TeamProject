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
