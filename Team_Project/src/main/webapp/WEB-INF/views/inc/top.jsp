<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>메인페이지</title>
<div class="container">
<ul>
<c:choose>

	<c:when test="${empty sessionScope.id }">
	
	<%-- <li class="container text-right"><div id="login"><a href="${pageContext.request.contextPath}/foot/login">로그인</a> | <a href="${pageContext.request.contextPath}/foot/join">회원가입</a> | <a href="${pageContext.request.contextPath}/foot/notice">고객센터</a></div></li> --%> 
	<li class="container text-right"><div id="login"><a href="${pageContext.request.contextPath}/foot/login">로그인</a> | <a href="${pageContext.request.contextPath}/foot/join">회원가입</a> | <a href="${pageContext.request.contextPath}/foot/notice">고객센터</a></div></li>
	</c:when>
	<c:otherwise>
		
	<li class="container text-right"><div id="login">${sessionScope.id }님 <a href="${pageContext.request.contextPath}/foot/logout">logout</a> | <a href="${pageContext.request.contextPath}/foot/member_info">MYPAGE</a></div></li>
	
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
										<li><a href="${pageContext.request.contextPath}/foot/product_detail">Product Detail</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/cart">Shopping Cart</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/checkout">Checkout</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/order-complete">Order Complete</a></li>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/foot/list_women">Women</a></li>
								<li><a href="${pageContext.request.contextPath}/foot/list_kids">Kids</a></li>
								<li><a href="${pageContext.request.contextPath}/foot/contact">Contact</a></li>
								
								
								<div class="col-sm-5 col-md-3 " style="float: right;" >
			            	<form action="#" class="search-wrap ">
			               <div class="cart">
			                  <input type="search" class="form-control search" placeholder="Search" >
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
									<div class="item">
										<div class="col">
											<h3><a href="#">25% off (Almost) Everything! Use Code: Summer Sale</a></h3>
										</div>
									</div>
									<div class="item">
										<div class="col">
											<h3><a href="#">Our biggest sale yet 50% off all summer shoes</a></h3>
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