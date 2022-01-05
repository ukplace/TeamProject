<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>    
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
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index">Mypage</a></span> / <span>주문내역</span></p>
					</div>
				</div>
			</div>
		</div>

		
			<div class="container">
				<div class="row row-pb-lg">
					<div class="col-md-10 offset-md-1">
						<div class="process-wrap">
						</div>
					</div>
				</div>
				
				    <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">
                        <div class="col-lg-12">
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-body">
                                    주문상세정보
                                    
                                    <div class="table-responsive">
                                        <table class="table table-bordered ">
                                            <thead>
                                                <tr  style=background-color:#f5f5f5;>
                                                    <th class="text-center">주문번호</th>
                                                    <th class="text-center">상품정보</th>
                                                    <th class="text-center">사이즈</th>
                                                    <th class="text-center">수량</th>
                                                    <th class="text-center">상품금액</th>
                                                    <th class="text-center">주문날짜</th>
                                                    <th class="text-center">진행상태</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <!-- 주문내역 시작 -->
                                            <c:set var="sum" value="0"/>
                                            <c:forEach var="orderDTO" items="${orderList }">
                                                <tr >
                                                    <td class="text-center" style="line-height:100px;">${orderDTO.o_idx }</td>
                                                    <td class="text-center"><img alt="shu1" src="${pageContext.request.contextPath}${orderDTO.p_thumImg}" width="150" height="100">
                                                    <a href="">${orderDTO.p_name }</a></td>
                                                    <td class="text-center" style="line-height:100px;">${orderDTO.o_size }</td>
                                                    <td class="text-center" style="line-height:100px;">${orderDTO.cart_count }</td>
                                                    <td class="text-center" style="line-height:100px;">${orderDTO.p_price }</td>
                                                    <td class="text-center" style="line-height:100px;">
                                                    <fmt:formatDate value="${orderDTO.o_date}" pattern="yyyy-MM-dd"/>
                                                    </td>
                                                    <td class="text-center" style="line-height:100px;">
                                                    <c:choose>
														<c:when test="${orderDTO.o_state eq 0 }">
															<a href="#" class="tit">결제 완료</a>
														</c:when>
														<c:when test="${orderDTO.o_state eq 1 }">
															<a href="#" class="tit">상품 준비중</a>
														</c:when>
														<c:when test="${orderDTO.o_state eq 2 }">
															<a href="#" class="tit">배송중</a>
														</c:when>
														<c:when test="${orderDTO.o_state eq 3 }">
															<a href="#" class="tit">수령완료</a>
															<a href="${pageContext.request.contextPath}/foot/review_write?p_num=${pageDTO.p_num}" class="tit"> | 리뷰작성</a>
														</c:when>
														<c:otherwise>
															<a href="#" class="tit">없음.</a>
														</c:otherwise>
													</c:choose>
                                                    </td>
                                                </tr>
                                                <c:set var="sum" value="${sum + (orderDTO.p_price * orderDTO.cart_count )}" />
                                              </c:forEach>
                                                </table>
                                                
                                              <!-- 주문내역 끝 -->    
                                              
                                                
                                                <!-- 주문/결제 금액 정보 시작 -->
                                              <table class="table table-bordered ">
                                                      <tr>
                                                    <th class="col-md-3">총 상품 가격</th>
                                                    <td>${sum }</td>
                                                    <th style=background-color:#f5f5f5;>총 결제금액</th>
                                                </tr>
                                                <tr>
                                                    <th>쿠폰할인</th>
                                                    <td>0원<br></td>
                                                    <th rowspan="4" style="color:teal;"><fmt:formatNumber pattern="###,###,###" value="${orderList[0].totalSum }" />원</th>
                                                    
                                                </tr>
                                                <tr>
                                                    <th>포인트사용</th>
                                                    <td>0원</td>
                                                </tr>
                                                <tr>
                                                    <th>배송비</th>
                                                    <td >
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
                                                    </td>
                                                </tr>
                                       
                                            
                                                    </table>
                                            	 <!-- 주문/결제 금액 정보 끝 -->    
                                                
                                                <br>
                                                <br>
                                                
                                                    
                                                    <!-- 배송지정보 시작 -->
                                                    배송지 정보
                                                    <table class="table table-bordered ">
                                                      <tr>
                                                    <th class="text-center"  style=background-color:#f5f5f5;>배송주소</th>
                                                    <td colspan="4">${orderList[0].o_zip }${orderList[0].o_address }${orderList[0].o_detail_address }<br></td>
                                                    <th style=background-color:#f5f5f5;>주문자정보</th>
                                                </tr>
                                                <tr>
                                                    <th class="text-center"  style=background-color:#f5f5f5;>수령인</th>
                                                    <td colspan="4">${orderList[0].o_name }<br></td>
                                                    <td rowspan="4"><p>${memberDTO.m_name }</p><p>${memberDTO.m_tel }</p><p>${memberDTO.m_email }</p></td>
                                                    
                                                </tr>
                                                <tr>
                                                    <th class="text-center"  style=background-color:#f5f5f5;>연락처</th>
                                                    <td colspan="4">${orderList[0].o_tel }<br></td>
                                                </tr>
                                                <tr>
                                                    <th class="text-center"  style=background-color:#f5f5f5;>비고</th>
                                                    <td colspan="4">
                                                    <c:choose>
                                                   	 <c:when test="${orderList[0].o_memo eq 'undefined' }">
															<a href="#" class="tit">메모없음 </a>
														</c:when>
														<c:otherwise>
															<a href="#" class="tit">${orderList[0].o_memo}</a>
														</c:otherwise>
													</c:choose>
                                                    <br></td>
                                                </tr>
                                       
                                            
                                                    </table>
                                                    
                                                    
                                                    <!-- 배송지정보 끝 -->
                                                    
                                            
                                            </tbody>
                                        </table>
                                     
                                </div>
                            </div>
                        </div>
                          <div class="text-center">
                                       <a href="orderList"> <button type="button" class="btn btn-primary">목록</button></a>
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

