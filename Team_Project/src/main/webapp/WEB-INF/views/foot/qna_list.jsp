<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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
<link href="${pageContext.request.contextPath}/css/style12.css" rel="stylesheet">
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
							<span>
							<a href="${pageContext.request.contextPath}/center/notice_list/">공지사항</a></span> /
							<span>
							<a href="${pageContext.request.contextPath}/center/faq_list/">자주묻는질문</a></span> /
							<span>
							<a href="${pageContext.request.contextPath}/center/qna_list/">1:1 문의하기</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Page Content -->
	<div class = "container">
	<div class="board_list_wrap">
	<table class = "board_list">
		<h1>QnA 관리</h1>
		<br>
		<thead>
		<tr class = "ti">
			<th>글번호</th>
			<th>문의유형</th>
			<th>작성자</th>
			<th>제목</th>
			<th>작성일</th>
		</tr>
		</thead>
		
		<tbody>
		<!-- 문의리스트 받아오는 부분 -->
		<c:forEach var="qnaDTO" items="${qnaList }">
			<tr class="tit">
				<tr>
				<td><a href="#" class="tit">${qnaDTO.qna_idx}</a></td>
				<td><a href="#" class="tit"></a>${qnaDTO.qna_type}</td>
				<td><a href="#" class="tit">${qnaDTO.qna_name}</a></td>
				<td><a href="#" class="tit">${qnaDTO.qna_content}</a></td>
				<td><fmt:formatDate value="${qnaDTO.qna_date}" pattern="yyyy-MM-dd"/></td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
<!-- 	<a href = "#" class = "bt"> 첫 페이지로 이동</a> -->
<!-- 	<div class = "paging"> -->
<%-- 	<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">	 --%>
<%-- 	<a href ="${pageContext.request.contextPath}/center/qna_list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"><i class = "ion-ios-arrow-back"></i></a> --%>
<%-- 	</c:if> --%>
	
<!-- 1씩 증가 : 꼭 있어야 하는지? 한번 물어보고 넘어가기 -->
<%-- 	<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1"> --%>
<%-- 	<a href="${pageContext.request.contextPath}/center/qna_list?pageNum=${i }"${1 }></a> --%>
<%-- 	</c:forEach> --%>
	
	<!-- 페이징 -->
	<div class="row">
				<div class="col-md-12 text-center">
						<div class="block-27">
				               <ul>
					              <li>
									<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">	
									<a href ="${pageContext.request.contextPath}/center/qna_list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"><i class = "ion-ios-arrow-back">이전</i></a>
									</c:if></li>
				                  <li class="active">
				                  <!-- 	1씩 증가 : 꼭 있어야 하는지? 한번 물어보고 넘어가기 -->
									<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
									<a href="${pageContext.request.contextPath}/center/qna_list?pageNum=${i }"${1 }>1</a>
									</c:forEach></li>
<!-- 				                  <li><a href="#">2</a></li> -->
<!-- 				                  <li><a href="#">3</a></li> -->
<!-- 				                  <li><a href="#">4</a></li> -->
<!-- 				                  <li><a href="#">5</a></li> -->
								<!-- end페이지가 count보다 더 클때 -->
				                  <li>
				                 <!-- end페이지가 count보다 더 클때 -->
									<c:if test="${pageDTO.endPage > pageDTO.pageCount }">
									<a href = "${pageContext.request.contextPath}/center/qna_list?pageNum=${pageDTO.startPage+pageDTO.pageBlock}"><i class = "ion-ios-arrow-back">다음</i></a>
									</c:if>
								</li>
				               </ul>
				            </div>
				</div>
	</div>

	</div>
</div>
</div>
	
		
<!-- 												<tr class="odd gradeX"> -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<!-- 														href="#">2</a></td> -->
<!-- 														 -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<!-- 														href="#"></a></td> -->
<!-- 													${memberDTO.id } -->
<!-- 													<td id="Qna1"	style="text-align: center; line-height: auto; margin: auto;"><a -->
<!-- 														href="#">bye@naver.com</a></td> -->
<!-- 													${memberDTO.pass } -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<!-- 														href="#">배송은 언제되나요?</a></td> -->
<!-- 													${memberDTO.name } -->
<!-- 													<td class="center" style="line-height: auto;"><a -->
<!-- 														href="#">2020-12-19</a></td> -->
<!-- 													${memberDTO.date } -->
<!-- 												</tr> -->
												
												<!-- 글번호 1번의 답변 -->
<!-- 												<tr id="Qna1" style="display: none;"> -->
<!-- 													<td colspan="2" > A. -->
<!-- 															<p> -->
<!-- 																<strong>[SHUSHU]</strong><br />- [shushu &gt; 배송조회]에서 -->
<!-- 																주문상품 확인 후 직접 취소하실 수 있습니다.<br />- 주문취소가 불가능한 상태 혹은 불가능한 -->
<!-- 																상품의 경우는 1:1문의를 접수해주시면 상담원 확인 후 처리결과를 안내해드립니다. -->
<!-- 															</p> -->
<!-- 															<p> -->
<!-- 																<strong>[고객센터]</strong><br />고객센터(1234-5678) 연결 후 상담원을 -->
<!-- 																통해 주문을 취소하실 수 있습니다. -->
<!-- 															</p> -->
<!-- 															<div class="noti_txt"> -->
<!-- 																답변이 충분치 않으셨다면 1:1문의를 이용해주십시오.  -->
<!-- 																<a	href="#">링크</a> -->
<!-- 															</div> -->
<!-- 													</td> -->
<!-- 												</tr> -->
<%-- 											</c:forEach> --%>
											<!-- 문의리스트 반복문 끝 -->
											
								<!-- /.table-responsive -->

			

	<footer id="colorlib-footer" role="contentinfo">
		<!-- 푸터들어가는곳 -->
		<jsp:include page="../inc/bottom.jsp"></jsp:include>
		<!-- 푸터들어가는곳 -->
	</footer>

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

