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
	private String email;														//아이디값이랑 같이 사용
	private String password;													//비밀번호
	private String name;														//이름
	private String tel;															//전화번호
	private String birth;														//생년월일
	private String zip;															//우편번호
	private String address;														//기본주소
	private String detail_address;												//상세주소
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
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public String getBirth() {
		return birth;
	}
	public void setBirth(String birth) {
		this.birth = birth;
	}
	public String getZip() {
		return zip;
	}
	public void setZip(String zip) {
		this.zip = zip;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String adrress) {
		this.address = adrress;
	}
	public String getDetail_address() {
		return detail_address;
	}
	public void setDetail_address(String detail_address) {
		this.detail_address = detail_address;
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
