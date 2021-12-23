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
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row"></div>
				<!-- /.row -->

				<div class="row">
					<div
						style="width: 1200px; text-align: center; display: inline-block; margin: 0 auto;">
						<div class="panel panel-default">
							<div class="panel-heading">QNA 관리</div>
							<!-- /.panel-heading -->
							<!-- 문의시작 -->
							<div class="panel-body"
								style="width: 1100px; padding: 200; display: inline-block; margin: 0 auto;">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover"
										id="dataTables-example">
										<thead>
											<tr>
												<th style="text-align: center; width: 50px;">글번호</th>
												<th style="text-align: center; width: 50px;">문의유형</th>
												<th style="text-align: center; width: 80px;">작성자</th>
												<th style="text-align: center; width: 200px;">제목</th>
												<th style="text-align: center; width: 80px;">작성일</th>
											</tr>
										</thead>

										<tbody>
<%-- 											<c:forEach> --%>
											<!-- 문의리스트 받아오는 부분 -->
<%-- 											<c:forEach var="qnaDTO" items="${qnaList }"> --%>
<!-- 												<tr class="odd gradeX"> -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<%-- 														href="#">${qnaDTO.qna_idx}</a></td> --%>
<!-- 													${qnaDTO.qna_idx } -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<!-- 														href="#"></a>${qnaDTO.qna_type}</td> -->
<!-- 													${memberDTO.id } -->
<!-- 													<td id="Qna1"	style="text-align: center; line-height: auto; margin: auto;"><a -->
<%-- 														href="#">${qnaDTO.qna_email}</a></td> --%>
<!-- 													${qnaDTO.qna_email} -->
<!-- 													<td style="text-align: center; line-height: auto;"><a -->
<%-- 														href="#">${qnaDTO.qna_content}</a></td> --%>
<!-- 													${qnaDTO.qna_content} -->
<!-- 													<td class="center" style="line-height: auto;"><a -->
<%-- 														href="#">${qnaDTO.date}</a></td> --%>
<!-- 													${qnaDTO.date} -->
<!-- 												</tr> -->
<%-- 											</c:forEach> --%>
<%-- 											<c:forEach> --%>
<%-- 												var="memberDTO" items="${memberList} --%>
												<tr class="odd gradeX">
													<td style="text-align: center; line-height: auto;"><a
														href="#">2</a></td>
														<!--  -->
													<td style="text-align: center; line-height: auto;"><a
														href="#"></a></td>
													<!-- ${memberDTO.id } -->
													<td id="Qna1"	style="text-align: center; line-height: auto; margin: auto;"><a
														href="#">bye@naver.com</a></td>
													<!-- ${memberDTO.pass } -->
													<td style="text-align: center; line-height: auto;"><a
														href="#">배송은 언제되나요?</a></td>
													<!-- ${memberDTO.name } -->
													<td class="center" style="line-height: auto;"><a
														href="#">2020-12-19</a></td>
													<!-- ${memberDTO.date } -->
												</tr>
												
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
<%-- 											</c:forEach> --%>
											
										</tbody>
									</table>
								</div>
								<!-- 페이징 버튼 -->
								<div class="row">
							<div class="col-md-12 text-center">
								<div class="block-27">
				               <ul>
					               <li><a href="#"><i class="ion-ios-arrow-back"></i></a></li>
				                  <li class="active"><span>1</span></li>
				                  <li><a href="#">2</a></li>
				                  <li><a href="#">3</a></li>
				                  <li><a href="#">4</a></li>
				                  <li><a href="#">5</a></li>
				                  <li><a href="#"><i class="ion-ios-arrow-forward"></i></a></li>
				               </ul>
				            </div>
							</div>
						</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.panel-body -->
						</div>
						<!-- /.panel -->
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->


			</div>
			<!-- /.container-fluid -->
		</div>
		<!-- /#page-wrapper -->

	</div>
	<!-- /#wrapper -->

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

