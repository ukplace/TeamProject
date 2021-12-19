<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
			
			<div class="top-menu">
				<div class="container">
					<div class="row">
						<div class="col-sm-7 col-md-9">
							<div id="colorlib-logo"><a href="${pageContext.request.contextPath}/foot/index">Footwear</a></div>
						</div>
						<div class="col-sm-5 col-md-3">
			            <form action="#" class="search-wrap">
			               <div class="form-group">
			                  <input type="search" class="form-control search" placeholder="Search">
			                  <button class="btn btn-primary submit-search text-center" type="submit"><i class="icon-search"></i></button>
			               </div>
			            </form>
			         </div>
		         </div>
					<div class="row">
						<div class="col-sm-12 text-left menu-1">
							<ul>
								<li class="active"><a href="${pageContext.request.contextPath}/foot/index">Home</a></li>
								<li class="has-dropdown">
									<a href="${pageContext.request.contextPath}/foot/men">Men</a>
									<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/foot/product-detail">Product Detail</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/cart">Shopping Cart</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/checkout">Checkout</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/order-complete">Order Complete</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/add-to-wishlist">Wishlist</a></li>
									</ul>
								</li>
								<li><a href="${pageContext.request.contextPath}/foot/women">Women</a></li>
								<li><a href="${pageContext.request.contextPath}/foot/kids">Kids</a></li>
								<li><a href="${pageContext.request.contextPath}/foot/about">About</a></li>
								<li><a href="${pageContext.request.contextPath}/foot/contact">Contact</a></li>
								<li class="cart"><a href="${pageContext.request.contextPath}/foot/cart"><i class="icon-shopping-cart"></i> Cart [0]</a></li>
								<li class="has-dropdown cart">
									MyPage
									<ul class="dropdown">
										<li><a href="${pageContext.request.contextPath}/foot/orderList">주문내역</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/memberInfo">회원정보</a></li>
										<li><a href="${pageContext.request.contextPath}/foot/withdrawal">회원탈퇴</a></li>
									</ul>
								</li>
								<li class="cart"><a href="${pageContext.request.contextPath}/foot/join" >JOIN</a></li>
								<li class="cart"><a href="${pageContext.request.contextPath}/foot/login" >LOGIN</a></li>
								
							</ul>
						</div>
					</div>
				</div>
			</div>
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