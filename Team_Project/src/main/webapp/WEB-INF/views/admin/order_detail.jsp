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
	text-align: center;
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
						<h1 class="page-header">주문현황 디테일</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-body">
								<h3>Order Detail</h3>

								<div class="table-responsive">
									<table class="table table-bordered ">
										<thead>
											<tr style="background-color: #f5f5f5;">
												<th class="text-center">주문번호</th>
												<th class="text-center">주문일시</th>
												<th class="text-center">결제금액</th>
												<th class="text-center">배송비</th>
												<th class="text-center">주문자</th>
												<th class="text-center">진행상태</th>
											</tr>
										</thead>
										<tbody>

											<!-- 기본정보 시작 -->
											<tr>
												<td class="text-center" style="line-height: 50px;">${orderDetailList[0].o_idx }</td>
												<td class="text-center">${orderDetailList[0].o_date }</td>
												<td class="text-center" style="line-height: 50px;">${orderDetailList[0].totalSum }원</td>
												<td class="text-center" style="line-height: 50px;">3,000원</td>
												<td class="text-center" style="line-height: 50px;">${memberDTO2.m_name }</td>
												<td rowspan="6" class="text-center"
													style="line-height: 50px;"><c:choose>
														<c:when test="${orderDTO.o_state eq '0' }">
															결제 완료
														</c:when>
														<c:when test="${orderDTO.o_state eq '1' }">
															상품 준비중
														</c:when>
														<c:when test="${orderDTO.o_state eq '2' }">
															배송중
														</c:when>
														<c:when test="${orderDTO.o_state eq '3' }">
															수령완료 
														</c:when>
														<c:otherwise>
															없음.
														</c:otherwise>
													</c:choose></td>
												<!--                                                     <td rowspan="6" class="text-center" style="line-height:260px;"> -->
												<!--                                                     <select class=”form-control” > -->
												<!-- 	                                                    <option value = "1">결제완료</option> -->
												<!-- 	                                                    <option value = "2">배송준비중</option> -->
												<!-- 	                                                    <option value = "3">배송중</option> -->
												<!-- 	                                                    <option value = "4">배송완료</option> -->
												<!--                                                     </select></td> -->
											</tr>
											<!-- 기본정보 끝 -->

											<!-- 배송정보 시작 -->
											<tr>
												<th class="text-center" style="background-color: #f5f5f5;">배송주소</th>
												<td colspan="4">[${orderDetailList[0].o_zip }]&ensp;${orderDetailList[0].o_address },&nbsp;${orderDetailList[0].o_detail_address }<br></td>
											</tr>
											<tr>
												<th class="text-center" style="background-color: #f5f5f5;">받는사람</th>
												<td colspan="4">${orderDetailList[0].o_name }<br></td>
											</tr>
											<tr>
												<th class="text-center" style="background-color: #f5f5f5;">연락처</th>
												<td colspan="4">${orderDetailList[0].o_tel }<br></td>
											</tr>
											<tr>
												<th class="text-center" style="background-color: #f5f5f5;">비고</th>
												<td colspan="4">${orderDetailList[0].o_memo }<br></td>
											</tr>

											<tr>
												<th class="text-center" style="background-color: #f5f5f5;">배송회사</th>
												<td class="text-center"><select class=”form-control”>
														<option value="">선택안함</option>
														<option value="CJ택배">CJ택배</option>
														<option value="로젠택배">로젠택배</option>
														<option value="한진택배">한진택배</option>
												</select></td>

												<th class="text-center" style="background-color: #f5f5f5;">송장번호</th>

												<td colspan="2"><input type="text"></td>

												<!-- 배송정보 끝 -->

												<!-- 상품정보 시작 -->
												<table class="table table-bordered ">
													<thead>
														<tr style="background-color: #f5f5f5;">
															<th class="text-center col-md-5">상품</th>
															<th class="text-center">사이즈</th>
															<th class="text-center">수량</th>
															<th class="text-center col-md-2">주문금액</th>
															<th class="text-center col-md-2">합계</th>
														</tr>
													</thead>
													<c:forEach var="orderDetailList"
														items="${orderDetailList }">
														<tr>
															<td class="text-center"><img alt="product"
																src="${pageContext.request.contextPath}${orderDetailList.p_thumImg }"
																width="200" height="150">
																&emsp;&emsp;&emsp;&emsp;${orderDetailList.p_name }</td>
															<td class="text-center" style="line-height: 1000%;">${orderDetailList.o_size }</td>
															<td class="text-center" style="line-height: 1000%;">${orderDetailList.cart_count }</td>
															<td class="text-center" style="line-height: 1000%;">${orderDetailList.p_price }</td>
															<td class="text-center" style="line-height: 1000%;">${orderDetailList.p_price }</td>
														</tr>
													</c:forEach>
												</table>


												<!-- 상품정보 끝 -->
										</tbody>
									</table>
									<div class="text-center">
										<button type="button" class="btn btn-primary"
											onclick="location.href='${pageContext.request.contextPath}/admin/order_list'">목록</button>
									</div>
								</div>
							</div>
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

		<!-- Custom Theme JavaScript -->
		<script src="${pageContext.request.contextPath}/js/startmin.js"></script>
</body>

</html>

