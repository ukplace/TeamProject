package com.itwillbs.domain;

public class OrderPageItemDTO { // 상품 데이터를 담을 클래스
	
	/* 뷰로부터 전달받을 값 */
	private int p_num;
	private int o_count;
	
	/* p_num 을 통해 DB로부터 꺼내올 값 */
	private String p_name;
	private int o_price;
	private double o_discount;
	
	/* 만들어 낼 값 */
	/* '상품가격', '총 가격', '한 개의 상품구매로 받을 수 있는 포인트', '총 포인트' */
	/* => 미리 만들어서 뷰로 보내줄 거임! -> 데이터 담을 변수 생성 */
	private int salePrice;
	private int totalPrice;
	private int point;
	private int totalPoint;
	
	public int getP_num() {
		return p_num;
	}
	public void setP_num(int p_num) {
		this.p_num = p_num;
	}
	public int getO_count() {
		return o_count;
	}
	public void setO_count(int o_count) {
		this.o_count = o_count;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public int getO_price() {
		return o_price;
	}
	public void setO_price(int o_price) {
		this.o_price = o_price;
	}
	public double getO_discount() {
		return o_discount;
	}
	public void setO_discount(double o_discount) {
		this.o_discount = o_discount;
	}
	public int getSalePrice() {
		return salePrice;
	}
	public void setSalePrice(int salePrice) {
		this.salePrice = salePrice;
	}
	public int getTotalPrice() {
		return totalPrice;
	}
	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	public int getTotalPoint() {
		return totalPoint;
	}
	public void setTotalPoint(int totalPoint) {
		this.totalPoint = totalPoint;
	}
	
	/* salePrice,totalPrice,point,totalPoint 변수들 값 세팅할 수 있는 메서드 생성 */
	public void initSaleTotal() {
		this.salePrice = (int) (this.o_price * (1-this.o_discount));
		this.totalPrice = this.salePrice * this.o_count;
		this.point = (int)(Math.floor(this.salePrice * 0.05));
		this.totalPoint = this.point * this.o_count;
	}
	
	@Override
	public String toString() {
		return "OrderPageItemDTO [p_num=" + p_num + ", o_count=" + o_count + ", p_name=" + p_name + ", o_price="
				+ o_price + ", o_discount=" + o_discount + ", salePrice=" + salePrice + ", totalPrice=" + totalPrice
				+ ", point=" + point + ", totalPoint=" + totalPoint + "]";
	}
	
	

}
