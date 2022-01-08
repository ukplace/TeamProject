<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<script type="text/javascript">
function removeCheck() {
	if(confirm("정말 삭제하시겠습니까?")==true){
		location.href='${pageContext.request.contextPath}/center/qna_delete?qna_idx='+${qnaDTO.qna_idx};
	}else{
		return false;
	}
}
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
			<div class="container" >
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a
								href="${pageContext.request.contextPath}/foot/index/">Home</a></span>
							<span>QNA REPLY</span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<div class="row" >
			<div class="col-lg-8" style= "display: inline-block; margin: 0 auto;">
			<form action="${pageContext.request.contextPath}/center/qna_reply_pro" method="post" class="contact-form">
<%-- 			<input type="text" name="page" value="${pageDTO.pageDTO}" hidden="hidden" /> --%>
			<input type="hidden" name="qna_idx" value="${qnaDTO.qna_idx}" /> 
			<input type="hidden" name="qna_re_ref" value="${qnaDTO.qna_re_ref}" />
			<input type="hidden" name="qna_re_lev" value="${qnaDTO.qna_re_lev}" />
			<input type="hidden" name="qna_re_seq" value="${qnaDTO.qna_re_seq}" />
			<input type="hidden" name="qna_type" value="${qnaDTO.qna_type}" />
				
					<h2>답변드립니다!</h2>
					<br>
					<div class="row">
						<div class="col-md-12">
							<div class="form-group">
								<label for="type">제목</label>
								<input type="text" name="qna_subject" id="qna_subject" class="form-control" value="${qnaDTO.qna_subject}" required="required" >
							</div>
						</div>
						
						<!-- 회원번호 자동으로 받아오게 설정 -->
					
<!-- 						<input type="text" name="m_idx" value="${memberDTO.m_idx}" hidden="hidden"> -->

<!-- 						<div class="col-md-6"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="name">작성자</label><br> -->
<%-- 								 ${qnaDTO.qna_name } --%>
<!-- 							</div> -->
<!-- 						</div> -->
						
<!-- 						<div class="col-md-7"> -->
<!-- 							<div class="form-group"> -->
<!-- 								<label for="subject">제목</label><br> -->
<%-- 								 ${qnaDTO.qna_subject} --%>
<!-- 							</div> -->
<!-- 						</div> -->
						<br>
						<div class="col-md-6">
							<div class="form-group">
								<label for="name">작성자</label> <input type="text"
									name="qna_name" id="name" class="form-control" placeholder="Enter Your user-name" required="required" readonly value="관리자">
							</div>
						</div>
						
						<div class="col-sm-12">
										<div class="form-group">
											<label for="content">답변내용</label><br>
											<textarea name="qna_content" id="content" cols="50" rows="10" class="form-control-9" required="required"></textarea>
										</div>
									</div>
				
						
<!-- 						<div class="col-md-12"> -->
<!-- 							<div  class="form-group"> -->
<!-- 								<div class="radio"> -->
<!-- 									<label><input type="radio" 	name="radio" value="normal"> 일반글</label> -->
<!-- 									<label><input type="radio" name="radio" value="secret"> 비밀글 </label>  -->
<!-- 								</div> -->
<!-- 							</div> -->
<!-- 						</div> -->
					</div>
					<div class="col-sm-12">
										<div class="form-group" style="text-align: center;">
											<input type="submit" value="등록" class="btn btn-primary" id=btn>
											<input type="button" value="목록" class="btn btn-primary" onclick="location.href='${pageContext.request.contextPath}/center/qna_list'">
											<input type="button" value="삭제" class="btn btn-primary" onclick="removeCheck()">
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

