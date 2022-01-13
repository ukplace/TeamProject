<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link
	href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700"
	rel="stylesheet">

<!-- Animate.css -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/icomoon.css">
<!-- Ion Icon Fonts-->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/ionicons.min.css">
<!-- Bootstrap  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">

<!-- Magnific Popup -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/magnific-popup.css">

<!-- Flexslider  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/flexslider.css">

<!-- Owl Carousel -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">

<!-- Date Picker -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
<!-- Flaticons  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">

<!-- Theme style  -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/style.css">


</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<!-- 헤더들어가는곳 -->
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<!-- 헤더들어가는곳 -->
		</nav>

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a
								href="${pageContext.request.contextPath}/foot/index">Mypage</a></span>
							/ <span>주문내역</span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="container">
			<div class="row row-pb-lg">
				<div class="col-md-10 offset-md-1">
					<div class="process-wrap"></div>
				</div>
			</div>
			<div class="row row-pb-lg">
				<div class="col-md-12">
					<div class="product-name d-flex">
						<div class="one-eight text-center">
							<span>주문번호</span>
						</div>
						<div class="one-eight text-center">
							<span>수령하는사람</span>
						</div>

						<div class="one-forth text-left px-4 text-center">
							<span>수령지</span>
						</div>
						<div class="one-eight text-center">
							<span>상품금액</span>
						</div>
						<div class="one-eight text-center">
							<span>진행상황</span>
						</div>
					</div>
					<c:forEach var="orderDTO" items="${orderList }">
						<div class="product-cart d-flex">
							<div class="one-eight text-center">
								<div class="display-tc">
									<a
										href="${pageContext.request.contextPath}/foot/order_detail?o_idx=${orderDTO.o_idx }"><span>${orderDTO.o_idx }</span></a>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<a
										href="${pageContext.request.contextPath}/foot/order_detail?o_idx=${orderDTO.o_idx }"><span>${orderDTO.o_name }</span></a>
								</div>
							</div>

							<div class="one-forth text-left px-4 text-center">
								<div class="display-tc">
									<a
										href="${pageContext.request.contextPath}/foot/order_detail?o_idx=${orderDTO.o_idx }"><span
										class="price">${orderDTO.o_zip}${orderDTO.o_address}${orderDTO.o_detail_address}</span></a>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<a
										href="${pageContext.request.contextPath}/foot/order_detail?o_idx=${orderDTO.o_idx }"><span
										class="price">${orderDTO.totalSum }</span></a>
								</div>
							</div>

							<div class="one-eight text-center">
								<div class="display-tc">
									<a
										href="${pageContext.request.contextPath}/foot/order_detail?o_idx=${orderDTO.o_idx }">
										<span> <c:choose>
												<c:when test="${orderDTO.o_state eq '0' }">
													<td><a href="#" class="tit">결제 완료</a></td>
												</c:when>
												<c:when test="${orderDTO.o_state eq '1' }">
													<td><a href="#" class="tit">상품 준비중</a></td>
												</c:when>
												<c:when test="${orderDTO.o_state eq '2' }">
													<td><a href="#" class="tit">배송중</a></td>
												</c:when>
												<c:when test="${orderDTO.o_state eq '3' }">
													<td><a href="#" class="tit">수령완료</a></td>
												</c:when>
												<c:otherwise>
													<td><a href="#" class="tit">없음.</a></td>
												</c:otherwise>
											</c:choose>
									</span>
									</a>
								</div>
							</div>
						</div>
					</c:forEach>
				</div>

				<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="total-wrap">
							<div class="row">
								<div class="col-sm-8">
									<form action="#">
										<div class="row form-group"></div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer id="colorlib-footer" role="contentinfo">
			<!-- 푸터들어가는곳 -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
			<!-- 푸터들어가는곳 -->
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>

	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
	<!-- popper -->
	<script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
	<!-- bootstrap 4.1 -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
	<!-- jQuery easing -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script
		src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script
		src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>


</body>
</html>

