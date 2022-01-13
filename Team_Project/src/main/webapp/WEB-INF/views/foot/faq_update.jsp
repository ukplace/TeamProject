<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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

<style type="text/css">
.form-control-9 {
	display: block;
	width: 100%;
	padding: 6px 12px;
	font-size: 14px;
	line-height: 1.42857143;
	color: #555;
	background-color: #fff;
	background-image: none;
	border: 1px solid #ccc;
	border-radius: 4px;
	-webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
	-webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow
		ease-in-out .15s;
	-o-transition: border-color ease-in-out .15s, box-shadow ease-in-out
		.15s;
	transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s
}
</style>



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
							<span>FAQ UPDATE</span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row">
			<div class="col-lg-8" style="display: inline-block; margin: 0 auto;">
				<form
					action="${pageContext.request.contextPath}/center/faq_update_pro?faq_idx=${faqDTO.faq_idx}"
					method="post" class="colorlib-form">
					<h2>FAQ</h2>

					<div class="col-md-6">
						<div class="form-group">
							<label for="subject">제목</label> <input type="text"
								name="faq_subject" id="subject" class="form-control"
								value="${faqDTO.faq_subject }">
						</div>
					</div>

					<div class="col-md-7">
						<div class="form-group">
							<label for="subject">문의유형</label> <input type="text"
								name="faq_question" id="question" class="form-control"
								value="${faqDTO.faq_question }">
						</div>
					</div>

					<div class="col-sm-12">
						<div class="form-group">
							<label for="content">답변</label>
							<textarea name="faq_answer" id="answer" cols="50" rows="10"
								class="form-control-9" placeholder="내용을 적어주세요">${faqDTO.faq_answer }</textarea>

						</div>
					</div>


					<div class="col-sm-12">
						<div class="form-group" style="text-align: center;">
							<input type="submit" value="등록" class="btn btn-primary">
							<input type="button" value="목록" class="btn btn-primary"
								onclick="location.href='${pageContext.request.contextPath}/center/faq_list'">
						</div>
					</div>
				</form>
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

