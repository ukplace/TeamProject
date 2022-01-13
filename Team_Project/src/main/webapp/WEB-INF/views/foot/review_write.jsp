<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Facebook and Twitter integration -->
<meta property="og:title" content="" />
<meta property="og:image" content="" />
<meta property="og:url" content="" />
<meta property="og:site_name" content="" />
<meta property="og:description" content="" />
<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />

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

<style type="text/css">
#star {
	font-size: 0;
	letter-spacing: -4px;
}

#star a {
	font-size: 22px;
	letter-spacing: 0;
	display: inline-block;
	margin-left: 5px;
	color: #ccc;
	text-decoration: none;
}

#star a:first-child {
	margin-left: 0;
}

#star a.on {
	color: #777;
}
</style>

<script type="text/javascript">
	// 	$("#star").click(function() {

	// 	     $(this).parent().children("a").removeClass("on");

	// 	     $(this).addClass("on").prevAll("a").addClass("on");

	// 	     return false;

	// 	});
</script>


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
								href="${pageContext.request.contextPath}/foot/index/">Home</a></span> /
							<span>Review Wirte</span>
						</p>
					</div>
				</div>
			</div>
		</div>


		<div id="colorlib-contact">
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<form
							action="${pageContext.request.contextPath}/foot/review_write_pro?p_num=${productDTO.p_num}"
							method="post" class="contact-form">
							<div class="contact-wrap">
								<h3>리뷰 작성란</h3>

								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<label for="name">작성자</label> <input type="text"
												name="review_writer" id="name" class="form-control" readonly
												value="${memberDTO.m_name }">
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<label for="product">제품이름</label> <input type="text"
												name="review_subject" id="product" class="form-control"
												readonly value="${productDTO.p_name } ">
										</div>
									</div>
									<div class="w-100"></div>
									<div class="col-sm-12">
										<div class="form-group">
											<label for="content">리뷰내용</label>
											<textarea name="review_content" id="content" cols="30"
												rows="10" class="form-control" placeholder="리뷰 내용을 적어주세요"></textarea>
										</div>
									</div>

									<div class="w-100"></div>
									<br>
									<div class="col-sm-4">
										<div class="form-group">
											<label for="cost_score">상품을 평가해주세요.</label>
											<div class="form-field">
												<i class="icon icon-arrow-down3"></i> <select
													name="review_score" id="cost_score" class="form-control"
													required="required">
													<option value="">선택하세요</option>
													<option value="5">5점</option>
													<option value="4">4점</option>
													<option value="3">3점</option>
													<option value="2">2점</option>
													<option value="1">1점</option>
												</select>
											</div>
										</div>
									</div>

									<div class="w-100"></div>

									<!-- 									<div class="col-sm-4"> -->
									<!-- 					                  <div class="form-group"> -->
									<!-- 					                  	<label for="quality_score">상품 퀄리티</label> -->
									<!-- 					                     <div class="form-field"> -->
									<!-- 					                     	<i class="icon icon-arrow-down3"></i> -->
									<!-- 					                        <select name="quality_score" id="quality_score" class="form-control"> -->
									<!-- 					                        	<option value="0">평점을 선택해주세요</option> -->
									<!-- 						                      	<option value="1">★★★★★</option> -->
									<!-- 						                        <option value="2">★★★★</option> -->
									<!-- 						                        <option value="3">★★★</option> -->
									<!-- 						                        <option value="4">★★</option> -->
									<!-- 						                        <option value="5">★</option> -->
									<!-- 					                        </select> -->
									<!-- 					                     </div> -->
									<!-- 										</div> -->
									<!-- 									</div> -->

									<div class="w-100"></div>

									<!-- 									<div class="col-sm-4"> -->
									<!-- 					                  <div class="form-group"> -->
									<!-- 					                  	<label for="design_score">상품 디자인</label> -->
									<!-- 					                     <div class="form-field"> -->
									<!-- 					                     	<i class="icon icon-arrow-down3"></i> -->
									<!-- 					                        <select name="design_score" id="design_score" class="form-control"> -->
									<!-- 					                        	<option value="0">평점을 선택해주세요</option> -->
									<!-- 						                      	<option value="1">★★★★★</option> -->
									<!-- 						                        <option value="2">★★★★</option> -->
									<!-- 						                        <option value="3">★★★</option> -->
									<!-- 						                        <option value="4">★★</option> -->
									<!-- 						                        <option value="5">★</option> -->
									<!-- 					                        </select> -->
									<!-- 					                     </div> -->
									<!-- 										</div> -->
									<!-- 									</div> -->
									<!-- 									<div class="w-100"></div> -->
									<!-- 									<div class="col-sm-12"> -->
									<!-- 										<div class="form-group"> -->
									<!-- 											<p id="star"> 부모 -->
									<!-- 												<a href="#" value="1">★</a> 자식들 -->
									<!-- 												<a href="#" value="2">★</a> -->
									<!-- 												<a href="#" value="3">★</a> -->
									<!-- 												<a href="#" value="4">★</a> -->
									<!-- 												<a href="#" value="5">★</a> -->
									<!-- 											</p> -->


									<div style="margin: 0 auto;">
										<a href="index"><button type="submit"
												class="btn btn-primary">리뷰 등록</button></a>
										<!-- 	<input type="submit" value="리뷰 등록" class="btn btn-primary"> -->
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>
				<div class="col-md-6">
					<div id="map" class="colorlib-map"></div>
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

