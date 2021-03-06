<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<!-- <script type="text/javascript"> -->
<!-- $("#deleteBtn").click(function(){ -->
<!-- 	// ??? ?????? ?????? -->
<!-- 	if(confirm("?????????????????????????")){ -->
<%-- 		document.deleteForm.action="${pageContext.request.contextPath}/center/notice_delete_pro?num=${NoticeDTO.notice_idx}" --%>
<!-- 		document.deleteForm.submit(); -->
<!-- 	} -->
<!-- } -->

<!-- </script> -->

<script type="text/javascript">
	function removeCheck() {
		if (confirm("?????? ??????????????????????????") == true) { //??????

			location.href = '${pageContext.request.contextPath}/center/notice_delete_pro?notice_idx=${noticeDTO.notice_idx}&page=${pageDTO.pageNum }';

		} else { //??????

			return false;

		}

	}
</script>


</head>
<body>

	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<!-- ????????????????????? -->
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<!-- ????????????????????? -->
		</nav>

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a
								href="${pageContext.request.contextPath}/foot/index/">Home</a></span> <span>????????????</span>

						</p>
					</div>
				</div>
			</div>
		</div>
		<br>
		<div class="row">
			<div class="col-lg-8" style="display: inline-block; margin: 0 auto;">
				<form method="post" name="deleteForm" enctype="multipart/form-data">
					<input type="hidden" name="idx" value="${NoticeDTO.notice_idx}" />
					<h2>????????????</h2>
					<br> <br>


					<div class="col-md-7">
						<div class="form-group">
							<label for="subject" style="font-size: 20px;">${noticeDTO.notice_subject}</label><br>
							<hr>

						</div>
					</div>
					<br>
					<div class="col-sm-12">
						<div class="form-group">
							<label for="content"></label><br>
							<textarea rows="12px" cols="100px" style="border: none;">${noticeDTO.notice_content}</textarea>

						</div>
					</div>


					<!-- 						<div class="col-md-12"> -->
					<!-- 							<div  class="form-group"> -->
					<!-- 								<div class="radio"> -->
					<!-- 									<label><input type="radio" 	name="radio" value="normal"> ?????????</label> -->
					<!-- 									<label><input type="radio" name="radio" value="secret"> ????????? </label>  -->
					<!-- 								</div> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
			</div>
			<div class="col-sm-12">
				<div class="form-group" style="text-align: center;">
					<c:choose>
						<c:when test="${'admin@shushu.com' eq sessionScope.id }">
							<input type="button" value="??????" class="btn btn-primary"
								onclick="location.href='${pageContext.request.contextPath}/center/notice_update?notice_idx=${noticeDTO.notice_idx}&page=${pageDTO.pageNum }'">
						</c:when>
					</c:choose>
					<input type="button" value="??????" class="btn btn-primary"
						onclick="location.href='${pageContext.request.contextPath}/center/notice_list'">
					<c:choose>
						<c:when test="${'admin@shushu.com' eq sessionScope.id }">
							<input type="button" value="??????" class="btn btn-primary"
								onclick="removeCheck()">
						</c:when>
					</c:choose>
				</div>
			</div>
			</form>
		</div>

	</div>

	<footer id="colorlib-footer" role="contentinfo">
		<!-- ????????????????????? -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- ????????????????????? -->
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

