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


<script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#emaildup').click(function() {
			if ($('#m_email').val() == "") {
				alert("이메일을 입력하세요");
				$('#m_email').focus();
				return;
			}

			$.ajax('${pageContext.request.contextPath}/member/emailCheck', {
				data : {
					'm_email' : $('#m_email').val()
				},
				success : function(rdata) {
					if (rdata == 'emailok') {
						rdata = "이메일 사용가능";
					} else {
						rdata = "이메일 중복";
					}
					$('#btncheck').html(rdata);
				}
			});

		});
	});
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#emaildup').click(function() {
			if ($('#m_email').val() == "") {
				alert("이메일을 입력하세요");
				$('#m_email').focus();
				return;
			}

			$.ajax('${pageContext.request.contextPath}/member/emailCheck', {
				data : {
					'm_email' : $('#m_email').val()
				},
				success : function(rdata) {
					if (rdata == 'emailok') {
						rdata = "이메일 사용가능";
					} else {
						rdata = "이메일 중복";
					}
					$('#btncheck').html(rdata);
				}
			});

		});
	});
</script>


<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">
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

.checks {
	position: relative;
}

.checks input[type="radio"] {
	position: absolute;
	width: 1px;
	height: 1px;
	padding: 0;
	margin: -1px;
	overflow: hidden;
	clip: rect(0, 0, 0, 0);
	border: 0;
}

.checks input[type="radio"]+label {
	display: inline-block;
	position: relative;
	padding-left: 30px;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
}

.checks input[type="radio"]+label:before {
	content: '';
	position: absolute;
	left: 0;
	top: -4px;
	width: 21px;
	height: 21px;
	text-align: center;
	background: #fafafa;
	border: 1px solid #cacece;
	border-radius: 100%;
	box-shadow: 0px 1px 2px rgba(0, 0, 0, 0.05), inset 0px -15px 10px -12px
		rgba(0, 0, 0, 0.05);
}

.checks input[type="radio"]+label:active:before, .checks input[type="radio"]:checked+label:active:before
	{
	box-shadow: 0 1px 2px rgba(0, 0, 0, 0.05), inset 0px 1px 3px
		rgba(0, 0, 0, 0.1);
}

.checks input[type="radio"]:checked+label:before {
	background: #E9ECEE;
	border-color: #adb8c0;
}

.checks input[type="radio"]:checked+label:after {
	content: '';
	position: absolute;
	top: 1px;
	left: 5px;
	width: 13px;
	height: 13px;
	background: #99a1a7;
	border-radius: 100%;
	box-shadow: inset 0px 0px 10px rgba(0, 0, 0, 0.3);
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
						<p class="bread">
							<span><a
								href="${pageContext.request.contextPath}/foot/index">Home</a></span> /
							<span>회원가입</span>
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
					<form method="post" class="colorlib-form" name="join"
						action="${pageContext.request.contextPath}/foot/joinPro"
						onsubmit="return checkForm()">
						<h2>회원가입</h2>
						<div class="row">
							<div class="col-md-12">
								<div class="form-group"></div>
							</div>
							<div class="col-md-9">


								<div class="form-group">
									<label for="m_email"><h4>* 이메일</h4> </label>
									<div id="btncheck">이메일 중복체크하세요</div>
									<br>
									<table>
										<tr>
											<td width="80%"><input type="email" id="m_email"
												name="m_email" placeholder="example@email.com"
												class="form-control"></td>
											<td>&nbsp&nbsp</td>
											<td><input type="button" value="중복확인"
												class="btn btn-default btn-lg" id="emaildup"></td>
										</tr>
									</table>

								</div>

								<div class="form-group">
									<label for="password"><h4>* 비밀번호</h4></label>&nbsp;&nbsp;&nbsp;&nbsp;<span
										id="passwordCheck"></span> <input type="password"
										id="password" name="m_pass" placeholder="영문,숫자 포함 입력해주세요"
										class="form-control" onkeyup="checkPasswd(this.value)" />
								</div>

								<div class="form-group">
									<label for="password"><h4>* 비밀번호 확인</h4></label>&nbsp;&nbsp;&nbsp;&nbsp;<span
										id="passwordCheck2"></span> <input type="password"
										id="password2" name="password2" placeholder="비밀번호를 확인해주세요"
										class="form-control" onkeyup="checkConfirmPasswd(this.value)" />
								</div>

								<div class="form-group">
									<label for="name"><h4>이름</h4></label> <input type="text"
										id="name" name="m_name" placeholder="이름을 입력해주세요"
										class="form-control" required="required" />
								</div>

								<div class="form-group">
									<label for="tel"><h4>전화번호</h4></label> <input type="text"
										id="tel" name="m_tel" placeholder="전화번호를 입력해주세요"
										class="form-control" required="required" />
								</div>

								<div class="form-group">
									<label for="birth"><h4>생년월일</h4></label> <input type="text"
										id="birth" name="m_birth" placeholder="생년월일 입력"
										class="form-control" required="required" />
								</div>



								<div class="form-group">
									<label><h4>주소</h4></label>
									<table>
										<tr>
											<td width="80%"><input type="text" name="m_zip"
												id="sample4_postcode" placeholder="우편번호" readonly
												class="form-control" required="required"></td>
											<td>&nbsp&nbsp</td>
											<td><input type="button"
												onclick="sample4_execDaumPostcode()" value="우편번호 찾기"
												class="btn btn-default btn-lg"></td>
										</tr>
										<tr height="10px"></tr>
										<tr>
											<td colspan="3"><input type="text" class="form-control"
												name="m_address" id="sample4_roadAddress"
												placeholder="도로명주소" readonly></td>
										</tr>
										<tr height="10px"></tr>
										<tr>
											<td colspan="3"><input type="text" class="form-control"
												name="m_detail_address" id="sample4_roadAddress"
												placeholder="상세주소"></td>
										</tr>
										<tr height="1px">
											<td><input type="hidden" id="sample4_extraAddress"
												placeholder="참고항목"></td>
											<td><span id="guide" style="color: #999; display: none"></span>
											</td>
										</tr>
									</table>
								</div>


								<input type="submit" class="btn btn-default" value="회원가입">
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
	<script
		src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
		//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
		function sample4_execDaumPostcode() {
			new daum.Postcode(
					{
						oncomplete : function(data) {
							// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

							// 도로명 주소의 노출 규칙에 따라 주소를 표시한다.
							// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
							var roadAddr = data.roadAddress; // 도로명 주소 변수
							var extraRoadAddr = ''; // 참고 항목 변수

							// 법정동명이 있을 경우 추가한다. (법정리는 제외)
							// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
							if (data.bname !== ''
									&& /[동|로|가]$/g.test(data.bname)) {
								extraRoadAddr += data.bname;
							}
							// 건물명이 있고, 공동주택일 경우 추가한다.
							if (data.buildingName !== ''
									&& data.apartment === 'Y') {
								extraRoadAddr += (extraRoadAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
							if (extraRoadAddr !== '') {
								extraRoadAddr = ' (' + extraRoadAddr + ')';
							}

							// 우편번호와 주소 정보를 해당 필드에 넣는다.
							document.getElementById('sample4_postcode').value = data.zonecode;
							document.getElementById("sample4_roadAddress").value = roadAddr;
							document.getElementById("sample4_roadAddress").value = data.jibunAddress;

							// 참고항목 문자열이 있을 경우 해당 필드에 넣는다.
							if (roadAddr !== '') {
								document.getElementById("sample4_extraAddress").value = extraRoadAddr;
							} else {
								document.getElementById("sample4_extraAddress").value = '';
							}

							var guideTextBox = document.getElementById("guide");
							// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
							if (data.autoRoadAddress) {
								var expRoadAddr = data.autoRoadAddress
										+ extraRoadAddr;
								guideTextBox.innerHTML = '(예상 도로명 주소 : '
										+ expRoadAddr + ')';
								guideTextBox.style.display = 'block';

							} else if (data.autoJibunAddress) {
								var expJibunAddr = data.autoJibunAddress;
								guideTextBox.innerHTML = '(예상 지번 주소 : '
										+ expJibunAddr + ')';
								guideTextBox.style.display = 'block';
							} else {
								guideTextBox.innerHTML = '';
								guideTextBox.style.display = 'none';
							}
						}
					}).open();
		}

		//---------------------
	</script>


</body>
</html>

