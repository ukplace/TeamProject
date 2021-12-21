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
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index/">Home</a></span> / <span>Checkout</span></p>
					</div>
				</div>
			</div>
		</div>


		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-sm-10 offset-md-1">
						<div class="process-wrap">
							<div class="process text-center active">
								<p><span>01</span></p>
								<h3>Shopping Cart</h3>
							</div>
							<div class="process text-center active">
								<p><span>02</span></p>
								<h3>Checkout</h3>
							</div>
							<div class="process text-center">
								<p><span>03</span></p>
								<h3>Order Complete</h3>
							</div>
						</div>
					</div>
				</div>
				
				  <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
				 <div class="panel-body">
                                    주문상세정보
                                    
                                    <div class="table-responsive">
                                        <table class="table table-bordered ">
                                            <thead>
                                                <tr  style=background-color:#f5f5f5;>
                                                    <th >주문번호</th>
                                                    <th >상품정보</th>
                                                    <th >사이즈</th>
                                                    <th >수량</th>
                                                    <th >상품금액</th>
                                                    <th >배송비</th>
                                                    <th >진행상태</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <!-- 주문내역 시작 -->
                                                <tr >
                                                    <td  style="line-height:100px;">20211220-1</td>
                                                    <td ><img alt="shu1" src="${pageContext.request.contextPath}/images/item-6.jpg" width="150" height="100"> Deviate 나이트로 WTR 러닝화/Deviate</a></td>
                                                    <td  style="line-height:100px;">240</td>
                                                    <td  style="line-height:100px;">1</td>
                                                    <td  style="line-height:100px;">50,000원</td>
                                                    <td  style="line-height:100px;">3,000원</td>
                                                    <td  style="line-height:100px;">결제완료</td>
                                                </tr>
                                                </table>
				
				<div class="row">
					<div class="col-lg-8">
						<form method="post" class="colorlib-form">
							<h2>Billing Details</h2>
							
							        
		              	<div class="row">
			               <div class="col-md-12">
			                  <div class="form-group">
			                  
			                  <!-- 할인혜택 시작 -->
			                  
			                    					할인/혜택
                                                    <table class="table table-bordered ">
                                                      <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;">쿠폰</th>
                                                    <td style="background-color:#f5f5f5; line-height:50px;">보유쿠폰 0장 
                                                    &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                                                    <a href="#" class="btn btn-primary">쿠폰조회</a></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;">포인트</th>
                                                    <td style="background-color:#f5f5f5; line-height:50px;"><input type="text" id="fname" class="form-control col-md-3"  placeholder="0" >원
                                                    <a href="#" class="btn btn-primary">전액사용</a></td>
                                                </tr>
                                                    </table>
                                                    
                                  <!-- 할인혜택 끝 --> 
                                                    
                                                    <br>
                                       				<br>
                                    주문자 정보
                                                    <table class="table table-bordered ">
                                                      <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">이름</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-4"  placeholder="이름" ></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">전화번호</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-6" placeholder="전화번호 입력하세요" ></td>
                                                    
                                                </tr>
                                                <tr>
                                                   <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">휴대폰번호</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-6" placeholder="휴대폰번호 입력하세요"></td>
                                                </tr>
                                                <tr>
                                                   <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">이메일</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-8" placeholder="이메일 입력하세요"></td>
                                                </tr>
                                                    </table>
                                                    
                                                    <br>
                                       				<br>
                                     배송지 정보
                                                    <table class="table table-bordered ">
                                                      <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">배송지</th>
                                                    <td>   <div class="form-field">
							                     	<i class="icon icon-arrow-down3"></i>
							                        <select name="people" id="people" class="form-control">
								                      	<option value="#">배송지 선택하세요</option>
								                        <option value="#">Alaska</option>
								                        <option value="#">China</option>
								                        <option value="#">Japan</option>
								                        <option value="#">Korea</option>
								                        <option value="#">Philippines</option>
							                        </select>
							                     </div></td>
                                                </tr>
                                                
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">이름</th>
                                                    <td colspan="2"><input type="text" id="fname" class="form-control col-md-4" placeholder="이름" ></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">전화번호</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-6" placeholder="전화번호 입력하세요"></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:150px;" class="col-md-3">주소</th>
                                                    <td><input type="text" id="fname" class="form-control col-md-4" placeholder="우편번호">
													&nbsp&nbsp&nbsp<a href="#" class="btn btn-primary">우편번호</a>
                                                    <input type="text" id="fname" class="form-control" placeholder="주소">
                                                    <input type="text" id="fname" class="form-control" placeholder="상세주소"></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">배송메모</th>
                                                    <td><input type="text" id="fname" class="form-control" placeholder="배송메모"></td>
                                                </tr>
                                       
                                            
                                                    </table>
                                                    
                                                    
<!-- 			                  	<label for="country">Select Country</label> -->
			                     <div class="form-field">
			                     	<i class="icon icon-arrow-down3"></i>
<!-- 			                        <select name="people" id="people" class="form-control"> -->
<!-- 				                      	<option value="#">Select country</option> -->
<!-- 				                        <option value="#">Alaska</option> -->
<!-- 				                        <option value="#">China</option> -->
<!-- 				                        <option value="#">Japan</option> -->
<!-- 				                        <option value="#">Korea</option> -->
<!-- 				                        <option value="#">Philippines</option> -->
<!-- 			                        </select> -->
			                     </div>
			                  </div>
			               </div>


								<div class="col-md-12">
									<div class="form-group">
										<div class="radio">
										</div>
									</div>
								</div>
		               </div>
		            </form>
					</div>

					<div class="col-lg-4">
						<div class="row">
							<div class="col-md-12">
								<div class="cart-detail">
									<h2>Cart Total</h2>
									<ul>
										<li>
											<span>총 상품금액</span> <span>50,000원</span>
											<ul>
												<li><span>배송료</span> <span>3,000원</span></li>
												<li><span>쿠폰할인</span> <span>-0원</span></li>
												<li><span>포인트사용</span> <span>-0원</span></li>
											</ul>
										</li>
										<li style="font-weight:bold;"> <span>총 결제금액</span> <span>53,000원</span></li>
									</ul>
								</div>
						   </div>

						   <div class="w-100"></div>

						   <div class="col-md-12">
								<div class="cart-detail">
									<h2>Payment Method</h2>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Direct Bank Tranfer</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Check Payment</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <label><input type="radio" name="optradio"> Paypal</label>
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="col-md-12">
											<div class="checkbox">
											   <label><input type="checkbox" value=""> I have read and accept the terms and conditions</label>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="row">
							<div class="col-md-12 text-center">
								<a href="#" class="btn btn-primary">결제하기</a>
								<a href="#" class="btn btn-outline-secondary">취소</a>
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

