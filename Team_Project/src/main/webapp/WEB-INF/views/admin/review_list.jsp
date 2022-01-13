<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="">
<meta name="author" content="">

<title>Startmin - Bootstrap Admin Theme</title>

<!-- Bootstrap Core CSS -->
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css"
	rel="stylesheet">

<!-- MetisMenu CSS -->
<link href="${pageContext.request.contextPath}/css/metisMenu.min.css"
	rel="stylesheet">

<!-- DataTables CSS -->
<link
	href="${pageContext.request.contextPath}/css/dataTables/dataTables.bootstrap.css"
	rel="stylesheet">

<!-- DataTables Responsive CSS -->
<link
	href="${pageContext.request.contextPath}/css/dataTables/dataTables.responsive.css"
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

		<!-- Page Content -->
		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">리뷰 리스트</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">리뷰 관리</div>
							<!-- /.panel-heading -->

							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th style="text-align: center; width: 50px;">번호</th>
												<th style="text-align: center; width: 120px;">고객번호</th>
												<th style="text-align: center; width: 120px;">제품번호</th>
												<th style="text-align: center; width: 250px;">리뷰제목</th>
												<th style="text-align: center; width: 100px;">리뷰 작성일</th>
											</tr>
										</thead>

										<tbody>
											<!-- <c:forEach> -->
											<!-- 리뷰리스트 받아오는 부분 -->
											<c:forEach>
												<!-- var="memberDTO" items="${memberList} -->
												<tr class="odd gradeX">
													<td style="text-align: center; line-height: auto;">1</td>
													<!-- ${memberDTO.id } -->
													<td
														style="text-align: center; line-height: auto; margin: auto;">고객번호</td>
													<!-- ${memberDTO.pass } -->
													<td style="text-align: center; line-height: auto;">제품번호</td>
													<!-- ${memberDTO.name } -->
													<td class="center" style="line-height: auto;"><a
														href="">리뷰제목</a></td>
													<!-- ${memberDTO.date } -->
													<td style="text-align: center; line-height: auto;">2021-12-19</td>
													<!--  -->
												</tr>
											</c:forEach>
											<!-- 리뷰리스트 반복문 끝 -->
											<!-- </c:forEach> -->
										</tbody>
									</table>
								</div>
								<!-- /.table-responsive -->
							</div>
							<!-- /.panel-body -->


							<div class="panel-body" align="center">
								<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/review_list?pageNum=${pageDTO.startPage - pageDTO.pageBlock}'">
										Prev</button>
								</c:if>

								<c:forEach var="i" begin="${pageDTO.startPage }"
									end="${pageDTO.endPage }" step="1">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/review_list?pageNum=${i}'">
										${i}</button>
								</c:forEach>

								<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/review_list?pageNum=${pageDTO.startPage + pageDTO.pageBlock}'">
										Next</button>
								</c:if>
							</div>
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




	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>

	<!-- Bootstrap Core JavaScript -->
	<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>

	<!-- Metis Menu Plugin JavaScript -->
	<script src="${pageContext.request.contextPath}/js/metisMenu.min.js"></script>

	<!-- DataTables JavaScript -->
	<script
		src="${pageContext.request.contextPath}/js/dataTables/jquery.dataTables.min.js"></script>
	<script
		src="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.min.js"></script>

	<!-- Custom Theme JavaScript -->
	<script src="${pageContext.request.contextPath}/js/startmin.js"></script>

	<!-- Page-Level Demo Scripts - Tables - Use for reference -->
	<script>
		$(document).ready(function() {
			$('#dataTables-example').DataTable({
				responsive : true
			});
		});
	</script>


</body>
</html>
