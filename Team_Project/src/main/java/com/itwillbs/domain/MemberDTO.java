package com.itwillbs.domain;

import java.sql.Timestamp;

/*
	create table member(
	idx int primary key,
	email varchar(30) not null,
	name varchar(30) not null,
	tel varchar(30) not null,
	birth varchar(30),
	zip varchar(30),
	address varchar(50)
	detail_address varchar(100)
	);
	
	
 
 */


public class MemberDTO {

	
	
										//회원가입 사용x						//회원가입 사용할 것			
	private int idx;
	private String m_email;														//아이디값이랑 같이 사용
	private String m_pass;													//비밀번호
	private String m_name;														//이름
	private String m_tel;															//전화번호
	private String m_birth;														//생년월일
	private String m_zip;															//우편번호
	private String m_address;														//기본주소
	private String m_detail_address;												//상세주소
	private int point;				//소유 포인트
	private String grade;				//회원 등급
	private Timestamp date;														//가입날짜
	private String auth_code;	 		//인증코드 
	private String auth_status;			//인증상태
	public int getIdx() {
		return idx;
	}
	public void setIdx(int idx) {
		this.idx = idx;
	}
	public String getM_email() {
		return m_email;
	}
	public void setM_email(String m_email) {
		this.m_email = m_email;
	}
	public String getM_pass() {
		return m_pass;
	}
	public void setM_pass(String m_pass) {
		this.m_pass = m_pass;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getM_tel() {
		return m_tel;
	}
	public void setM_tel(String m_tel) {
		this.m_tel = m_tel;
	}
	public String getM_birth() {
		return m_birth;
	}
	public void setM_birth(String m_birth) {
		this.m_birth = m_birth;
	}
	public String getM_zip() {
		return m_zip;
	}
	public void setM_zip(String m_zip) {
		this.m_zip = m_zip;
	}
	public String getM_address() {
		return m_address;
	}
	public void setM_address(String m_address) {
		this.m_address = m_address;
	}
	public String getM_detail_address() {
		return m_detail_address;
	}
	public void setM_detail_address(String m_detail_address) {
		this.m_detail_address = m_detail_address;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public String getGrade() {
		return grade;
	}
	public void setGrade(String grade) {
		this.grade = grade;
	}
	public Timestamp getDate() {
		return date;
	}
	public void setDate(Timestamp date) {
		this.date = date;
	}
	public String getAuth_code() {
		return auth_code;
	}
	public void setAuth_code(String auth_code) {
		this.auth_code = auth_code;
	}
	public String getAuth_status() {
		return auth_status;
	}
	public void setAuth_status(String auth_status) {
		this.auth_status = auth_status;
	}
	
	
	
	
}
