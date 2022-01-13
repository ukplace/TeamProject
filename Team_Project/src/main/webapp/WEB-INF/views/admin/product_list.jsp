<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

		<div id="page-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">제품 목록 조회</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->

				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4>제품 관리 [전체제품수 : ${pageDTO.count} 개]</h4>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th class="text-center" style="width: 50px;">제품번호</th>
												<th class="text-center" style="width: 50px;">제품사진</th>
												<th class="text-center" style="width: 400px;">제품명</th>
												<th class="text-center" style="width: 50px;">재고유무</th>
												<th class="text-center" style="width: 100px;">제품등록일</th>
											</tr>
										</thead>

										<tbody>
											<!-- 제품리스트 받아오는 부분 -->
											<c:forEach var="productDTO" items="${productList}">
												<tr class="odd gradeX"
													onclick="location.href='${pageContext.request.contextPath}/admin/productView?num=${productDTO.p_num}'">
													<td class="text-center">${productDTO.p_num}</td>
													<td align="center"><img alt="product_thumImg"
														src="${pageContext.request.contextPath}${productDTO.p_thumImg }"
														width="100" height="100"></td>
													<td class="text-center">${productDTO.p_name}</td>
													<td class="text-center"></td>
													<td class="text-center"><fmt:formatDate
															value="${productDTO.p_date}" pattern="yyyy-MM-dd" /></td>
												</tr>
											</c:forEach>
											<!-- 제품리스트 받아오는 부분 -->
										</tbody>



									</table>
								</div>
							</div>

							<div class="panel-body" align="center">
								<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/product_list?pageNum=${pageDTO.startPage - pageDTO.pageBlock}'">
										Prev</button>
								</c:if>

								<c:forEach var="i" begin="${pageDTO.startPage }"
									end="${pageDTO.endPage }" step="1">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/product_list?pageNum=${i}'">
										${i}</button>
								</c:forEach>

								<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/product_list?pageNum=${pageDTO.startPage + pageDTO.pageBlock}'">
										Next</button>
								</c:if>
							</div>

						</div>
					</div>
				</div>


			</div>
		</div>
	</div>


	<%-- 											<a href="${pageContext.request.contextPath}/member/main">메인으로 이동</a> --%>




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
