<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Facebook and Twitter integration -->

<meta name="twitter:title" content="" />
<meta name="twitter:image" content="" />
<meta name="twitter:url" content="" />
<meta name="twitter:card" content="" />
<link href="${pageContext.request.contextPath}/css/style12.css"
	rel="stylesheet">
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
							<span> <a
								href="${pageContext.request.contextPath}/center/notice_list/">공지사항</a></span>
							/ <span> <a
								href="${pageContext.request.contextPath}/center/faq_list/">자주묻는질문</a></span>
							/ <span> <a
								href="${pageContext.request.contextPath}/center/qna_list/">1:1
									문의하기</a></span>
						</p>
					</div>
				</div>
			</div>
		</div>

		<!-- Page Content -->
		<div class="container">
			<div class="board_list_wrap">
				<table class="board_list">
					<h1>FAQ</h1>
					<br>
					<thead>
						<tr class="ti">
							<th style="width: 70px;">번호</th>
							<th style="width: 450px;">제목</th>
							<th style="width: 100px;">문의유형</th>
							<th style="width: 100px;">작성일</th>
						</tr>
					</thead>

					<tbody>
						<!-- 리스트 받아오는 부분 -->
						<c:forEach var="faqDTO" items="${faqList }">
							<tr>
								<td><a href="#" class="tit">${faqDTO.faq_idx }</a></td>
								<td><a
									href="${pageContext.request.contextPath}/center/faq_detail?faq_idx=${faqDTO.faq_idx}&page=${pageDTO.pageNum } "
									class="tit">${faqDTO.faq_subject}</a></td>
								<td><a href="#" class="tit">${faqDTO.faq_question}</a></td>
								<td><fmt:formatDate value="${faqDTO.faq_date}"
										pattern="yyyy-MM-dd" /></td>
							</tr>
						</c:forEach>
						<!-- 			<tr> -->
						<!-- 			<td>2</td> -->
						<!-- 			<td> -->
						<!-- 			<a href = "#" class = "tit">자주 묻는 질문2</a> -->
						<!-- 			</td> -->
						<!-- 			<td>관리자</td> -->
						<!-- 			<td>날짜</td> -->
						<!-- 			<td>111</td> -->
						<!-- 		</tr> -->
					</tbody>
				</table>
				<br>
				<!-- 페이징 버튼부분 -->

			</div>
			<div class="row">
				<div class="col-md-12 text-center">
					<div class="block-27">
						<ul>
							<li class="active"><c:choose>
									<c:when test="${pageDTO.startPage > pageDTO.pageBlock }">
										<a
											href="${pageContext.request.contextPath}/center/faq_list?pageNum=${pageDTO.startPage-pageDTO.pageBlock}"><i
											class="ion-ios-arrow-back">이전</i></a>
									</c:when>
									<c:otherwise>
										<i class="ion-ios-arrow-back">이전</i>
									</c:otherwise>
								</c:choose></li>

							<li class="active"><c:forEach var="i"
									begin="${pageDTO.startPage }" end="${pageDTO.endPage }"
									step="1">
									<a
										href="${pageContext.request.contextPath}/center/faq_list?pageNum=${i }"
										${1 }>${i }</a>
								</c:forEach></li>
							<li class="active">
								<!-- end페이지 --> <c:choose>
									<c:when test="${pageDTO.endPage > pageDTO.pageCount }">
										<a
											href="${pageContext.request.contextPath}/center/faq_list?pageNum=${pageDTO.startPage+pageDTO.pageBlock}">다음<i
											class="ion-ios-arrow-forward"></i></a>
									</c:when>
									<c:otherwise>
											다음<i class="ion-ios-arrow-forward"></i>
									</c:otherwise>
								</c:choose>
							</li>
						</ul>
					</div>
				</div>
			</div>
			<c:choose>
				<c:when test="${'admin@shushu.com' eq sessionScope.id }">
					<input type="button" value="등록" style="float: right;"
						onclick="location.href='${pageContext.request.contextPath}/center/faq_write'">
				</c:when>
			</c:choose>
		</div>
	</div>








	<!-- /#page-wrapper -->

	<!-- /#wrapper -->

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

