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

<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">


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
								href="${pageContext.request.contextPath}/foot/index">Home</a></span> /
							<span>비밀번호변경</span>
						</p>
					</div>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="row row-pb-lg">
				<div class="col-sm-10 offset-md-1">
					<div class="process-wrap"></div>
				</div>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<form method="post" class="colorlib-form"
						action="${pageContext.request.contextPath}/foot/updatePassPro?member_m_email=${memberDTO.m_email}">
						<h2>회원가입</h2>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group"></div>
							</div>
							<div class="col-md-9">

								<div class="form-group">
									<div class="form-group">
										<label for="email">이메일</label> <br> <input type="text"
											name="m_email" class="id" value="${memberDTO.m_email }"
											readonly>
									</div>

								</div>

								<div class="form-group">
									<label for="password">새로운 비밀번호</label>&nbsp;&nbsp;&nbsp;&nbsp;<span
										id="passwordCheck"></span> <input type="password"
										id="password" name="m_pass" placeholder="영문,숫자 포함 입력해주세요"
										class="form-control" onkeyup="checkPasswd(this.value)" />
								</div>

								<div class="form-group">
									<label for="password">비밀번호 확인</label>&nbsp;&nbsp;&nbsp;&nbsp;<span
										id="passwordCheck2"></span> <input type="password"
										id="password2" name="password2" placeholder="비밀번호를 확인해주세요"
										class="form-control" onkeyup="checkConfirmPasswd(this.value)" />
								</div>



								<input type="submit" class="btn btn-default" value="비밀번호변경">
								<input type="button" class="btn btn-default" value="취소"
									onclick="history.back()">

							</div>

						</div>
					</form>
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

	<script src="${pageContext.request.contextPath}/js/passwordCheck.js"></script>




	<!--주소 찾기  -->
	<script>
 
    }    
	 $('#btn').click(function(){
			if($('#m_email').val() == ""){
						$('#btncheck').html('아이디를 입력하세요.');
						$('#btncheck').css('color','red');
						$('#m_email').focus();
						return;
						
			}
			
		});
		
		
</script>

</body>
</html>

