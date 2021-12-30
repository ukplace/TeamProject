<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
	<head>
	<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	
	<!-- review-img-div.css  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/review-img-div.css">
	
	<style type="text/css">
	.score {
		float: left;
	}
	
	.write {
		float: right;
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
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index/">Home</a></span> / <span>Review</span></p>
					</div>
				</div>
			</div>
		</div>


		<div class="colorlib-product" >
			<div class="container">
				<div class="row">
				
					<div class="col-lg-12">
						<form method="post" class="colorlib-form">
							<h2>Review</h2>
		              	<div class="row">
		              		
			               		
			               		<div class="col-md-6">
									<div class="form-group">
										<label for="fname">상품 가격</label>
										<input type="text" id="cost_score" class="form-control" placeholder="★★★★★">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" id="write">
										<label for="review_name">작성자</label>
										<input type="text" id="review_name" class="form-control" placeholder="작성자">
									</div>
								</div>
								
								<div class="w-100"></div>

			               		<div class="col-md-6">
									<div class="form-group">
										<label for="fname">상품 퀄리티</label>
										<input type="text" id="quality_score" class="form-control" placeholder="★★★★★">
									</div>
								</div>
								<div class="col-md-4">
									<div class="form-group" id="write">
										<label for="review_date">작성일</label>
										<input type="text" id="review_date" class="form-control" placeholder="2021-12-19">
									</div>
								</div>
								
								<div class="w-100"></div>
								
			               		<div class="col-md-6">
									<div class="form-group">
										<label for="fname">상품 디자인</label>
										<input type="text" id="design_score" class="form-control" placeholder="★★★★★">
									</div>
								</div>
								
								<div class="w-100"></div>


			               		


			               <div class="col-md-8">
								<div class="form-group">
									<label for="fname">Review</label>
			                    	<input type="text" id="review_subject" class="form-control" placeholder="Subject">
								</div>
			                  <div class="form-group">
<!-- 			                    	<input type="text" id="review_content" class="form-control" placeholder="Content"> -->
			                    	<textarea name="review_content" id="review_content" cols="30" rows="60" class="form-control" placeholder="Content"></textarea>
			                  </div>
			               </div>
			            
			               <div class="col-md-4">
								<div class="review-img-div">
									<img alt="review-img" src="${pageContext.request.contextPath}/images/pdetail_img.jpg" class="review-img" align="right">
								</div>
			               </div>
			            
								

								
		             		  </div>
		          		  </form>
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
   <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>


	</body>
</html>

