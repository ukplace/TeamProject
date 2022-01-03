<%@page import="com.itwillbs.dao.MemberDAO"%>
<%@page import="com.itwillbs.dao.MemberDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.itwillbs.dao.*"%>
<%@ page import="com.itwillbs.domain.*"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
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



</head>
<body>


	<div class="colorlib-loader"></div>

	<div id="page">
		<nav class="colorlib-nav" role="navigation">
			<!-- 헤더들어가는곳 -->
			<jsp:include page="../inc/top.jsp"></jsp:include>
			<!-- 헤더들어가는곳 -->
		</nav>

		<!-- 회원정보/주문내역/회원탈퇴 시작-->
		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread">
							<span><a
								href="${pageContext.request.contextPath}/foot/member_info">회원정보</a></span>
							/ <span><a
								href="${pageContext.request.contextPath}/foot/order_list">주문내역</a></span>
							/ <span><a
								href="${pageContext.request.contextPath}/foot/withdrawal">회원탈퇴</a></span>

						</p>
					</div>
				</div>
			</div>
		</div>
		<!-- 회원정보/주문내역/회원탈퇴 끝-->



		<!-- form태그 시작 -->
		<form action="${pageContext.request.contextPath}/foot/updateMemberPro" method="post" class="colorlib-form"
			style="width: 850px; height: 1050px; margin-left: 380px; margin-top: 100px;">
			<div class="container">

				<br>

				<!-- 회색배경 안 틀 여백 시작-->
				<!-- 				<div class="row row-pb-lg"> -->
				<!-- <!-- 					<div class="col-sm-10 offset-md-1"> -->
				<!-- 						<div class="process-wrap"></div> -->
				<!-- 					</div> -->
				<!-- 				</div> -->
				<!-- 회색배경 안 틀 여백 끝-->






				<div class="row">
					<div class="col-lg-8">
						
							
							<h2>마이페이지 수정</h2>
							<div class="row">
								<div class="col-md-12">
									<div class="form-group"></div>
								</div>

								<div class="col-md-7">
									<div class="form-group">
										<label for="email" >이메일</label> <br> 
										<input type="text" name="id" class="id" value="${memberDTO.m_email }" readonly>
									</div>
								</div>


								<div class="col-md-7">
									<div class="form-group">
										<label for="name" >이름</label><br> 
										<input type="text" name="name" value="${memberDTO.m_name }" readonly>
									</div>
								</div>

								<div class="col-md-7">
									<div class="form-group">
										<label for="password">비밀번호</label> <input type="password"
											id="passwoard"name="m_pass" class="form-control"
											placeholder="비밀번호를 입력해주세요" required="required">
									</div>
								</div>

					

								<div class="col-md-7">
									<div class="form-group">
										<label for="tel">전화번호</label> 
										<input type="text" id="tel" name="m_tel"placeholder="전화번호를 입력해주세요" class="form-control" required="required" value="${memberDTO.m_tel}"/>
									</div>
								</div>

								<div class="col-md-12">
									<div class="form-group">
										<label><h4>주소</h4></label>
										<table >
			                    		<tr><td width="80%"><input type="text" name= "m_zip" id="sample4_postcode" placeholder="우편번호" readonly class="form-control" required="required" ></td>
			                    		<td>&nbsp&nbsp</td>
			                    		<td><input type="button" onclick="sample4_execDaumPostcode()" value="우편번호 찾기" class ="btn btn-default btn-lg"></td></tr>
											<tr height="10px"></tr>
											<tr><td colspan="3"><input type="text" class="form-control" name="m_address" id="sample4_roadAddress" placeholder="도로명주소" readonly value="<%%>"></td></tr>
											<tr height="10px"></tr>
											<tr><td colspan="3"><input type="text" class="form-control" name="m_detail_address" id="sample4_roadAddress" placeholder="상세주소" value="${memberDTO.m_detail_address}" ></td></tr>
											<tr height="1px"><td><input type="hidden" id="sample4_extraAddress" placeholder="참고항목"></td><td>
												<span id="guide" style="color:#999;display:none"></span>
											</td></tr>
			                    		</table>
										</div>
  										



									<!-- 버튼 -->
									<div class="row" style="margin-left: 5px; margin-top: 30px;">
										<div class="col-md-12 text-center">
<!-- 										<input type="button" class="btn btn-primary" value="취소" onclick="history.back()"> -->
											<input type="submit" class="btn btn-primary" value="수정하기">
											
									</div>
									</div>
									<!-- 버튼 -->

								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
	



		<!-- form태그 끝 -->



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


<!--주소 찾기  -->
<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    //본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
    function sample4_execDaumPostcode() {
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
                document.getElementById('sample4_postcode').value = data.zonecode;
                document.getElementById("sample4_roadAddress").value = roadAddr;
                document.getElementById("sample4_roadAddress").value = data.jibunAddress;
                
                // 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
                if(roadAddr !== ''){
                    document.getElementById("sample4_extraAddress").value = extraRoadAddr;
                } else {
                    document.getElementById("sample4_extraAddress").value = '';
                }

                
                var guideTextBox = document.getElementById("guide");
                // 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
                if(data.autoRoadAddress) {
                    var expRoadAddr = data.autoRoadAddress + extraRoadAddr;
                    guideTextBox.innerHTML = '(예상 도로명 주소 : ' + expRoadAddr + ')';
                    guideTextBox.style.display = 'block';

                } else if(data.autoJibunAddress) {
                    var expJibunAddr = data.autoJibunAddress;
                    guideTextBox.innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';
                    guideTextBox.style.display = 'block';
                } else {
                    guideTextBox.innerHTML = '';
                    guideTextBox.style.display = 'none';
                }
            }
        }).open();
    }
    
	
	
</script>

	</body>
</html>