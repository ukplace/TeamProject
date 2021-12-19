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
	
	<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<style type="text/css">
.form-control-1 {
	display: block;
	width: 100%;
	height: 34px;
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

.checks {position: relative;}
.checks input[type="radio"] { position: absolute; width: 1px; height: 1px; padding: 0; margin: -1px; overflow: hidden; clip:rect(0,0,0,0); border: 0; }
.checks input[type="radio"] + label { display: inline-block; position: relative; padding-left: 30px; cursor: pointer; -webkit-user-select: none; -moz-user-select: none; -ms-user-select: none; }
.checks input[type="radio"] + label:before { content: ''; position: absolute; left: 0; top: -4px; width: 21px; height: 21px; text-align: center; background: #fafafa; border: 1px solid #cacece; border-radius: 100%; box-shadow: 0px 1px 2px rgba(0,0,0,0.05), inset 0px -15px 10px -12px rgba(0,0,0,0.05); }
.checks input[type="radio"] + label:active:before, .checks input[type="radio"]:checked + label:active:before { box-shadow: 0 1px 2px rgba(0,0,0,0.05), inset 0px 1px 3px rgba(0,0,0,0.1); }
.checks input[type="radio"]:checked + label:before { background: #E9ECEE; border-color: #adb8c0; }
.checks input[type="radio"]:checked + label:after { content: ''; position: absolute; top: 1px; left: 5px; width: 13px; height: 13px; background: #99a1a7; border-radius: 100%; box-shadow: inset 0px 0px 10px rgba(0,0,0,0.3); }


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
					<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index/">Home</a></span> / <span>회원가입</span></p>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-sm-10 offset-md-1">
						<div class="process-wrap">
						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-8" >
						<form method="post" class="colorlib-form" name="join">
							<h2>회원가입</h2>
		              		<div class="row">
								<div class="col-md-12">
									<div class="form-group">
									</div>
									</div>
									<div class="col-md-7">
									
										
										<div class="form-group">
										<label for="email"><h4>* 이메일</h4> </label><br>
										<table >
			                    		<tr><td width="80%"><input type="email" id="email" name="email" placeholder="example@email.com" class="form-control" required="required" ></td>
			                    		<td>&nbsp&nbsp</td>
			                    		<td><input type="button" value="중복확인" class ="btn btn-default btn-lg"></td></tr>
			                    		</table>
			               	 			</div>
			               	 			
									     <div class="form-group">
										 <label for="password"><h4>* 비밀번호</h4></label>
  										 <input type="password" id="password" name="password" placeholder="영문,숫자 포함 입력해주세요" class="form-control" required="required" />      
 								 		 </div>
 								         
 								         <div class="form-group">
										 <label for="password2"><h4>* 비밀번호 확인</h4></label>
  										 <input type="password2" id="password2" name="password2" placeholder="비밀번호를 확인해주세요" class="form-control"  required="required" />      
 								 		 </div>
 								 
 								 
			                      		 <div class="form-group">
			                      		 	<div class="checks">
                                             <label><h4>성별</h4></label>
                                             <label class="radio-inline">
                                                 <input type="radio" name="genderCheck1" id="genderCheck1" value="1">
                                                 <label for="genderCheck1">남</label>
                                             </label>
                                             <label class="radio-inline">
                                                 <input type="radio" name="genderCheck1" id="genderCheck2" value="2">
                                                 <label for="genderCheck2">여</label> 
                                             </label>
                                             </div>
                                        </div>
  										            
			    
										<div class="form-group">
										<label for="birth"><h4>생년월일</h4></label>
   										<input type="text" id="birth" name="birth" placeholder="이름을 입력해주세요" class="form-control" required="required" />      
  										</div>
  										
  										
			              
						
										<div class="form-group">
										<label for="zip"><h4>우편번호</h4></label>
   										<input type="text" id="zip" name="zip" placeholder="우편번호를 입력해주세요" class="form-control" required="required" />      
  										</div>
							
									     <div class="form-group">
										<label for="adress1"><h4>주소</h4></label>
   										<input type="text" id="adress1" name="adress1" placeholder="주소를 입력해주세요" class="form-control" required="required" />      
  										</div>
  										
  										<div class="form-group">
										<label for="adress2"><h4>상세주소</h4></label>
   										<input type="text" id="adress2" name="adress2" placeholder="상세주소를 입력하세요" class="form-control" required="required" />      
  										</div>
  										
  										
  										<div class="form-group">
										<label for="tel"><h4>전화번호</h4></label>
   										<input type="text" id="tel" name="tel"placeholder="전화번호를 입력해주세요" class="form-control" required="required" />      
  										</div>
  										
  										
  										<input type="submit" class="btn btn-default" value="회원가입">
										<input type="button" class="btn btn-default" value="취소" onclick="history.back()">
										
			
			
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

