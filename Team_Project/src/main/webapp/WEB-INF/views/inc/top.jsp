<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<style type="text/css">
.dropdown a {
font-size: 13px;
}
.dropdown a:hover{
text-decoration: underline;

}

</style>

<div class="container">
<ul>
<c:choose>

	<c:when test="${empty sessionScope.id }">
	
	<%-- <li class="container text-right"><div id="login"><a href="${pageContext.request.contextPath}/foot/login">로그인</a> | <a href="${pageContext.request.contextPath}/foot/join">회원가입</a> | <a href="${pageContext.request.contextPath}/foot/notice">고객센터</a></div></li> --%> 
	<li class="container text-right"><div id="login"><a href="${pageContext.request.contextPath}/foot/login">LOGIN</a> | <a href="${pageContext.request.contextPath}/foot/join">JOIN</a> | <a href="${pageContext.request.contextPath}/center/notice_list">CUSTOMER CENTER</a></div></li>
	</c:when>
	<c:otherwise>
		
	<li class="container text-right"><div id="login">${sessionScope.id }님 <a href="${pageContext.request.contextPath}/foot/logout">LOGOUT</a> | <a href="${pageContext.request.contextPath}/foot/member_info">MYPAGE</a>| <a href="${pageContext.request.contextPath}/center/notice_list">CUSTOMER CENTER</a></div></li>
	
	</c:otherwise>
</c:choose>
	</ul>
	</div>
</head>

<body>
			
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 col-md-9">
							<div id="colorlib-logo"><a href="${pageContext.request.contextPath}/foot/index">SHUSHU</a></div>
						</div>
						<!-- <div class="col-sm-5 col-md-3">
			            <form action="#" class="search-wrap">
			               <div class="form-group">
			                  <input type="search" class="form-control search" placeholder="Search">
			                  <button class="btn btn-primary submit-search text-center" type="submit"><i class="icon-search"></i></button>
			               </div>
			            </form>
			         </div> -->
		         </div>
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							<ul>
								<li class="active"><a href="${pageContext.request.contextPath}/foot/index">Home</a></li>
								<li class="has-dropdown">
									<a href="${pageContext.request.contextPath}/foot/list_men">Men</a>
									<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/foot/list_men_gentleman" >구두</a></li>
<%-- 										<li><a href="${pageContext.request.contextPath}/foot/list_men"></a></li> --%>
										<li><a href="${pageContext.request.contextPath}/foot/list_men_sneakers">스니커즈</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_men_outdoor">아웃도어</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_men_running">러닝화</a></li>
									</ul>
								</li>
								<li class="has-dropdown">
								<a href="${pageContext.request.contextPath}/foot/list_women">Women</a>
								<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/foot/list_women_lady">구두</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_women_sneakers">스니커즈</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_women_outdoor">아웃도어</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_women_running">러닝화</a></li>
										</ul>
								</li>
										<li class="has-dropdown">
								<a href="${pageContext.request.contextPath}/foot/list_kids">Kids</a>
								<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/foot/list_kids_kid">구두</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_kids_sneakers">스니커즈</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/list_kids_running">러닝화</a></li>
										</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/foot/contact">Contact</a></li>
								
								
					<div class="col-sm-5 col-md-3 " style="float: right;">
							<form action="${pageContext.request.contextPath}/foot/search" class="search-wrap " method="get">
								<div class="cart">
									<input type="search" name="keyword" class="form-control search" placeholder="Search" >
									<button class="btn btn-primary submit-search " type="submit"><i class="icon-search"></i></button>
								</div>
							</form>
			        </div>
			        
			         			<li class="cart"><a href="${pageContext.request.contextPath}/foot/cart"><i class="icon-shopping-cart"></i> Cart [0]</a></li>
								<li class="cart"><a href="${pageContext.request.contextPath}/foot/wishlist"><i class="icon-heart2"></i> Wish </a></li>
								
					
								</ul>
						</div>
					</div>
				</div>
				<br>
				
				
			
			<div class="sale">
				<div class="container">
					<div class="row">
						<div class="col-sm-8 offset-sm-2 text-center">
							<div class="row">
								<div class="owl-carousel2">
								<c:choose>
										<c:when test="${empty sessionScope.id }">
										<div class="item">
										<div class="col">
										
											<h3><a href="${pageContext.request.contextPath}/foot/join"> ▶ ▷ &nbsp; 회 원 가 입 &nbsp;하 고 &nbsp; 편 하 게 &nbsp; 쇼 핑 하 기&nbsp; ◀ ◁</a></h3>
										</div>
									</div>
									<div class="item">
										<div class="col">
											<h3><a href="${pageContext.request.contextPath}/center/notice_list"> ✔ 교 환 &nbsp; ✔ 반 품 은 &nbsp; 고 객 센 터 &nbsp; 문 의 </a></h3>
											</div>
											</div>
										</c:when>
										<c:otherwise>
									<div class="item">
										<div class="col">
										
											<h3><a href="${pageContext.request.contextPath}/foot/cart"> ▶ ▷ OPEN&nbsp; EVENT&nbsp; 5만원&nbsp; 이상 &nbsp;구매시&nbsp; 랜덤박스 &nbsp;증정&nbsp; ◀ ◁</a></h3>
										</div>
									</div>
									<div class="item">
										<div class="col">
											<h3><a href="${pageContext.request.contextPath}/center/notice_list"> ✔ 교 환 &nbsp; ✔ 반 품 은 &nbsp; 고 객 센 터 &nbsp; 문 의 </a></h3>
											</div>
											</div>
											</c:otherwise>
								</c:choose>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>

</body>
</html>