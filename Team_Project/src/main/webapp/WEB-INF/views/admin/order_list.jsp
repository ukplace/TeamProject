<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
	align-content: center;
}
</style>

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
<script
	src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
<script type="text/javascript">
	$(document).ready(
		function() {
			$('input[id^="chagestate"]')
					.click(
							function() {
								var m_idx = $(this).prev().val();
								var o_idx = $(this).prev().prev().val();
								var o_state = $(this).prev().prev().prev().val();
								alert("??????????????????!");
								location.href = '${pageContext.request.contextPath}/admin/changeOrderState?o_idx='+ o_idx+ '&m_idx='+ m_idx + '&o_state=' + o_state;
							})

	})
</script>






</head>
<body>

	<div id="wrapper">
		<!-- ??????????????? ????????????  -->
		<jsp:include page="../inc/nav.jsp"></jsp:include>
		<!-- ??????????????? ????????????  -->

		<div id="page-wrapper">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">???????????? ?????????</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4>?????? ??????</h4>
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<div class="table-responsive">
									<table class="table table-striped table-bordered table-hover">
										<thead>
											<tr>
												<th class="text-center col-md-2">????????????</th>
												<th class="text-center">?????????</th>
												<th class="text-center">????????????</th>
												<th class="text-center">????????????</th>
												<th class="text-center">?????????</th>
												<th class="text-center">????????????</th>
											</tr>
										</thead>


										<!-- ??????????????? ???????????? ?????? -->
										<%--                                             <c:forEach var="memberDTO" items="${memberList}"> --%>
										<%-- 											<tr><td>${memberDTO.id }</td><td>${memberDTO.pass }</td> --%>
										<%-- 											<td>${memberDTO.name }</td><td>${memberDTO.name }</td> --%>
										<%-- 											<td>${memberDTO.name }</td><td>${memberDTO.name }</td></tr> --%>
										<%-- 											</c:forEach> --%>
										<%-- 											</table> --%>
										<%-- 											<a href="${pageContext.request.contextPath}/member/main">???????????? ??????</a> --%>

										<tbody>
											<c:forEach var="Order_memberDTO" items="${orderList }"
												varStatus="status">
												<tr class="odd gradeX">
													<td>${Order_memberDTO.o_idx}</td>
													<td>${Order_memberDTO.o_name}</td>
													<td><a
														href="${pageContext.request.contextPath}/admin/order_detail?o_idx=${Order_memberDTO.o_idx}&m_idx=${Order_memberDTO.m_idx}">${Order_memberDTO.p_name }</a></td>
													<td>${Order_memberDTO.totalSum}</td>
													<td>3000???</td>
													<div class="orderMember">
														<td class="center">
															<%--                                                     <input type="hidden" name="o_state" id="o_state" value="${Order_memberDTO.o_state}"> --%>

															<select name="o_state${status.index}"
															id="o_state${status.index}">
																<option value="0"
																	<c:if test="${Order_memberDTO.o_state eq '0'}">selected</c:if>>????????????</option>
																<option value="1"
																	<c:if test="${Order_memberDTO.o_state eq '1'}">selected</c:if>>???????????????</option>
																<option value="2"
																	<c:if test="${Order_memberDTO.o_state eq '2'}">selected</c:if>>?????????</option>
																<option value="3"
																	<c:if test="${Order_memberDTO.o_state eq '3'}">selected</c:if>>????????????</option>
														</select> <input type="hidden" name=o_idx${status.index}
															id="o_idx${status.index}"
															value="${Order_memberDTO.o_idx}"> <input
															type="hidden" name=m_idx${status.index}
															id="m_idx${status.index}"
															value="${Order_memberDTO.m_idx}"> <input
															type="button" class="btn btn-primary btn-xs"
															value="???????????? ??????" name="chagestate${status.index}"
															id="chagestate${status.index}">

														</td>
													</div>
												</tr>
											</c:forEach>
										</tbody>

									</table>

									<!-- o_state ??? ???????????? ??? ????????????-->

								</div>
							</div>


							<div class="panel-body" align="center">
								<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/order_list?pageNum=${pageDTO.startPage - pageDTO.pageBlock}'">
										Prev</button>
								</c:if>

								<c:forEach var="i" begin="${pageDTO.startPage }"
									end="${pageDTO.endPage }" step="1">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/order_list?pageNum=${i}'">
										${i}</button>
								</c:forEach>

								<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
									<button type="button" class="btn btn-default"
										onclick="location.href='${pageContext.request.contextPath}/admin/order_list?pageNum=${pageDTO.startPage + pageDTO.pageBlock}'">
										Next</button>
								</c:if>
							</div>


						</div>
					</div>
				</div>
			</div>
		</div>
	</div>




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
