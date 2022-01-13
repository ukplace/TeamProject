<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">
<style type="text/css">
th {
	background-color: #f5f5f5;
}
</style>

<title>Startmin - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath}/css/metisMenu.min.css"
	rel="stylesheet">

<!-- Custom CSS -->
<link href="${pageContext.request.contextPath}/css/startmin.css"
	rel="stylesheet">

<!-- Custom Fonts -->
<link href="${pageContext.request.contextPath}/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
</head>
<body>

	<div id="wrapper">

		<!-- 네비게이션 들어간곳  -->
		<jsp:include page="../inc/nav.jsp"></jsp:include>
		<!-- 네비게이션 들어간곳  -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">회원정보수정</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<form
					action="${pageContext.request.contextPath}/admin/member_update_pro"
					method="post" name="memberUpdate">
					<input type="hidden" name="m_idx" value="${memberDTO.m_idx}">
					<div class="row">
						<div class="col-lg-12">
							<div class="panel panel-default">
								<div class="panel-body">
									<h3>Member Update</h3>

									<div class="table-responsive row">
										<div class="col-sm-8">
											<table
												class="table table-bordered table table-striped w-auto">
												<thead>

													<tr>
														<th class="text-center col-md-3">이메일</th>
														<td>${memberDTO.m_email}</td>
													</tr>
													<tr>
														<th class="text-center">회원명</th>
														<td>${memberDTO.m_name}</td>
													</tr>
													<tr>
														<th class="text-center">비밀번호</th>
														<td>${memberDTO.m_pass}</td>
													</tr>

													<tr>
														<th class="text-center">생일</th>
														<td>${memberDTO.m_birth}</td>
													</tr>
													<tr>
														<th class="text-center">전화번호</th>
														<td>${memberDTO.m_tel}</td>
													</tr>
													<tr>
														<th class="text-center">우편번호</th>
														<td>${memberDTO.m_zip}</td>
													</tr>
													<tr>
														<th class="text-center">주소</th>
														<td>${memberDTO.m_address}</td>
													</tr>
													<tr>
														<th class="text-center">상세주소</th>
														<td>${memberDTO.m_detail_address}</td>
													</tr>
													<tr>
														<th class="text-center">회원포인트</th>
														<td><input type="text" name="m_point"
															value="${memberDTO.m_point}" required="required"
															size="10"></td>
													</tr>
													<tr>
														<th class="text-center">회원등급</th>
														<td><input type="text" name="m_grade"
															value="${memberDTO.m_grade}" required="required"
															size="10"> <select name="selectGrade"
															onchange="changeGrade(this.value)">
																<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
																<!-- this 주면 여기 이 태그가 날라간다!  -->
																<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
																<option value="">등급선택</option>
																<option value="브론즈">브론즈</option>
																<option value="실버">실버</option>
																<option value="골드">골드</option>
														</select></td>
													</tr>

													<tr>
														<th class="text-center">가입일자</th>
														<td><fmt:formatDate value="${memberDTO.m_date}"
																pattern="yyyy-MM-dd" /></td>
													</tr>
													<tr>
														<th class="text-center" style="line-height: 300px;">비고</th>
														<td><textarea style="width: 700px; height: 300px"></textarea></td>
													</tr>

												</thead>

												<tbody>
												</tbody>
											</table>
											<div class="text-center">
												<input type="submit" class="btn btn-primary" value="등록">
												<button type="button" class="btn btn-primary" id="deleteBtn">삭제</button>
												<a
													href="${pageContext.request.contextPath}/admin/member_list?page=${pageDTO.pageNum}">
													<button type="button" class="btn btn-primary">목록</button>
												</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!-- /.col-lg-12 -->
						</div>
						<!-- /.row -->
					</div>
					<!-- /.container-fluid -->
				</form>
			</div>
			<!-- /#page-wrapper -->

		</div>
		<!-- /#wrapper -->
	</div>



	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/js/startmin.js"></script>



	<script type="text/javascript">
		function changeGrade(Grade) {
			document.memberUpdate.m_grade.value = Grade;
		}

		//상품삭제 버튼 클릭 이벤트
		$("#deleteBtn")
				.click(
						function() {
							// 상품 삭제 확인
							if (confirm("상품을 삭제하시겠습니까?")) {
								document.memberUpdate.action = "${pageContext.request.contextPath}/admin/member_delete?m_idx=${memberDTO.m_idx}"
								document.memberUpdate.submit();
							}
						});
	</script>

</body>

</html>

