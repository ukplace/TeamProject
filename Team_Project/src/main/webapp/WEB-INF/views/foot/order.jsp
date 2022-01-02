<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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
	
	<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	<script type="text/javascript">
	
	$(document).ready(function(){
		$('#kakaoPay').click(function(){
			$.ajax({
				url:'${pageContext.request.contextPath}/foot/kakaoPay.cls',
				dataType:'json',
				success:function(data){
					var box = data.next_redirect_pc_url;
					location.href = box;
				},
				error:function(error){
					alert(error);
				}
			});
		});
	});	
	
	</script>	
	
	  <script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
                // 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var roadAddr = data.roadAddress; // 도로명 주소 변수
                var extraRoadAddr = ''; // 참고 항목 변수
                // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                    extraRoadAddr += data.bname;
                }
                // 건물명이 있고, 공동주택일 경우 추가한다.
                if(data.buildingName !== '' && data.apartment === 'Y'){
                   extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                }
                // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                if(extraRoadAddr !== ''){
                    extraRoadAddr = ' (' + extraRoadAddr + ')';
                }
                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('member_post').value = data.zonecode;
                document.getElementById("member_address").value = roadAddr;
                document.getElementById("member_extraAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("member_extraAddress2").value = extraRoadAddr;
                } else {
                    document.getElementById("member_extraAddress2").value = '';
                }
                
            }
        }).open();
    }
</script>

	<script language="javascript" type="text/javascript">
	
	var name = "";
	var email = false;

	// 배송지 정보에 복사된 정보 남기기
	function initValue(frm){
	    name = m_idx.o_name.value;
	    email = m_idx.o_email.checked;
	}

	function shipToBill(m_idx) {
	    if(m_idx.copy.checked) {
	        initValue(m_idx); // 현재 텍스트박스와 체크박스 상태유지
	        // 기본
	        document.getElementById('rememberme').value = document.getElementById('o_name').value
	        // 폼객체 활용
	        m_idx.o_email.checked = o_email;
	    } else {
	        //document.getElementById('deliveryName') = "";
	       m_idx.o_name.value = "";
	       m_idx.o_name.checked = false;
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
	</div>
		<!-- home/checkout 표시 시작  -->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index/">Home</a></span> / <span>Checkout</span></p>
					</div>
				</div>
			</div>
		</div>
		<!-- home/checkout 표시 끝 -->

		<!-- 주문진행사항 아이콘 시작 -->
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
				</div>
				</div>
		<!-- 주문진행사항 아이콘 끝 -->
				
				<div class="container">
				  <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
				 <div class="panel-body">
			            
                                    주문상세정보
                                    
                   			<div class="row row-pb-lg">
					<div class="col-md-12">
						<div class="product-name d-flex">
							<div class="one-forth text-left px-4">
								<span>Product Details</span>
							</div>
							<div class="one-eight text-center">
								<span>Price</span>
							</div>
							<div class="one-eight text-center">
								<span>Quantity</span>
							</div>
							<div class="one-eight text-center">
								<span>Total</span>
							</div>
							<div class="one-eight text-center px-4">
								<span>Remove</span>
							</div>
						</div>
						<c:set var="sum" value="0"/>
						<c:forEach var="cartListDTO" items="${cartList }">
						<div class="product-cart d-flex">
							<div class="one-forth">
								<div class="product-img" style="background-image: url(${pageContext.request.contextPath}${cartListDTO.p_thumImg}">
								</div>
								<div class="display-tc">
									<h3>${cartListDTO.p_name} </h3>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price">${cartListDTO.p_price }</span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<input type="text" id="quantity" name="quantity" class="form-control input-number text-center" value="${cartListDTO.cart_count }" min="1" max="100">
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<span class="price">${cartListDTO.p_price * cartListDTO.cart_count }</span>
								</div>
							</div>
							<div class="one-eight text-center">
								<div class="display-tc">
									<a href="#" class="closed"></a>
								</div>
							</div>
						</div>
						<c:set var="sum" value="${sum + (cartListDTO.p_price * cartListDTO.cart_count )}" />
						</c:forEach>
				
				<div class="row">
					<div class="col-lg-8">
						<form method="post" class="colorlib-form">
							<h2>Billing Details</h2>
							
							        
		              	<div class="row">
			               <div class="col-md-12">
			                  <div class="form-group">
			                          <form action="" method="post" name="order" id="order">
			                  
						          <input type="hidden" id="order_idx" name="order_idx" value="">
						          <input type="hidden" id="m_idx" name="m_idx" value="${memberDTO.m_idx}">
						          <input type="hidden" id="" name="m_idx" value="${cartListDTO.p_num}">
						          <input type="hidden" id="payAmount" name="payAmount"  value="" >
						          <input type="hidden" id="selectedCoupon_idx" name="selectedCoupon_idx" value="0" >
								  <input type="hidden" id="selectedCoupon_name" name="selectedCoupon_name" value="0" >
			                  
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
                                                    <td><input type="text" id="m_name" class="form-control col-md-4" value="${memberDTO.m_name}"></td>
                                                </tr>
                                                <tr>
                                                   <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">휴대폰번호</th>
                                                    <td><input type="text" id="m_tel" class="form-control col-md-6" value="${memberDTO.m_tel}"></td>
                                                </tr>
                                                    </table>
                                                    
                                                    <br>
                                       				<br>
                                     배송지 정보  &nbsp&nbsp&nbsp  <input type="checkbox" id="rememberme" onclick="shipToBill(this.form);"> 주문자와 동일<br><br>
                                                    <table class="table table-bordered ">
                                                      <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">배송지</th>
                                                    <td>   <div class="form-field">
							                     	<i class="icon icon-arrow-down3"></i>
							                        <select name="people" id="people" class="form-control">
								                      	<option value="#">배송지 선택하세요</option>
								                        <option value="#"></option>
								                        <option value="#">China</option>
								                        <option value="#">Japan</option>
								                        <option value="#">Korea</option>
								                        <option value="#">Philippines</option>
							                        </select>
							                     </div></td>
                                                </tr>
                                                
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">이름</th>
                                                    <td colspan="2"><input type="text" id="o_name" class="form-control col-md-4" ></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">전화번호</th>
                                                    <td><input type="text" id="o_tel" class="form-control col-md-6" ></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:150px;" class="col-md-3">주소</th>
                                                    <td><input type="text" id="o_zip" class="form-control col-md-4" value="${memberDTO.m_zip}">
													&nbsp&nbsp&nbsp<input type="button" class="btn btn-primary" onClick="execDaumPostcode()" value="우편번호">
                                                    <input type="text" id="o_adress" class="form-control" value="${memberDTO.m_address}">
                                                    <input type="text" id="o_detail_adress" class="form-control" value="${memberDTO.m_detail_address}"></td>
                                                </tr>
                                                <tr>
                                                    <th style="background-color:#f5f5f5; line-height:50px;" class="col-md-3">배송메모</th>
                                                    <td><input type="text" id="fname" class="form-control" placeholder="배송메모"></td>
                                                </tr>
                                       
                                            
                                                    </table>
                                                    </form>
                                                    
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
											<span>총 상품금액</span> <span><fmt:formatNumber pattern="###,###,###" value="${sum}" />원</span>
											<ul>
												<li><span>배송료</span> <span>
											<c:set var="Delivery" value="0" />
											<c:choose>
												<c:when test="${sum >=80000}">
												<fmt:formatNumber pattern="###,###,###" value="${Delivery }" />원
												</c:when>
												<c:otherwise>
											<c:set var="Delivery" value="3000" />
												<fmt:formatNumber pattern="###,###,###" value="${Delivery }" /> 원	
												</c:otherwise>
											</c:choose>
											</span></p></li>
												<li><span>쿠폰할인</span> <span>-0원</span></li>
												<li><span>포인트사용</span> <span>-0원</span></li>
											</ul>
										</li>
										<li style="font-weight:bold;"> <span>총 결제금액</span> <span><fmt:formatNumber pattern="###,###,###" value="${Delivery+sum }" />원</span></li>
									</ul>
								</div>
						   </div>
							</div>
						   <div class="w-100"></div>

						   <div class="col-md-12">
								<div class="cart-detail">
									<h2>Payment Method</h2>
									<div class="form-group">
										<div class="col-md-12">
											<div class="radio">
											   <form action="${pageContext.request.contextPath}/foot/kakaoPay.cls" method="post" >
											   <label> 
											   <button type="submit" style="padding:0; border:none; background:none; float: right;" id="kakaoPay">
												 <img src="${pageContext.request.contextPath}/resources/images/kakaoPay.png" alt="kakaoKay"></button>
												 </label>
												 </form>
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

