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
        th{
        align-content: center;
        }
        
        
        
        
        </style>

        <title>Startmin - Bootstrap Admin Theme</title>

        <!-- Bootstrap Core CSS -->
        <link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">

        <!-- MetisMenu CSS -->
        <link href="${pageContext.request.contextPath}/css/metisMenu.min.css" rel="stylesheet">

        <!-- DataTables CSS -->
        <link href="${pageContext.request.contextPath}/css/dataTables/dataTables.bootstrap.css" rel="stylesheet">

        <!-- DataTables Responsive CSS -->
        <link href="${pageContext.request.contextPath}/css/dataTables/dataTables.responsive.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="${pageContext.request.contextPath}/css/startmin.css" rel="stylesheet">

        <!-- Custom Fonts -->
        <link href="${pageContext.request.contextPath}/css/font-awesome.min.css" rel="stylesheet" type="text/css">

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
                            <h1 class="page-header">주문현황 리스트</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4>주문 관리</h4>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th class="text-center col-md-2">주문번호</th>
                                                    <th class="text-center">주문자</th>
                                                    <th class="text-center">주문상품</th>
                                                    <th class="text-center">결제금액</th>
                                                    <th class="text-center">배송비</th>
                                                    <th class="text-center">주문상태</th>
                                                </tr>
                                            </thead>
                                            
                                            
                                            <!-- 제품리스트 받아오는 부분 -->
<%--                                             <c:forEach var="memberDTO" items="${memberList}"> --%>
<%-- 											<tr><td>${memberDTO.id }</td><td>${memberDTO.pass }</td> --%>
<%-- 											<td>${memberDTO.name }</td><td>${memberDTO.name }</td> --%>
<%-- 											<td>${memberDTO.name }</td><td>${memberDTO.name }</td></tr> --%>
<%-- 											</c:forEach> --%>
<%-- 											</table> --%>
<%-- 											<a href="${pageContext.request.contextPath}/member/main">메인으로 이동</a> --%>

											<tbody>
											<c:forEach var="Order_memberDTO" items="${orderList }">
                                                <tr class="odd gradeX">
                                                    <td>${Order_memberDTO.o_idx}</td>
                                                    <td>${Order_memberDTO.o_name}</td>
                                                    <td><a href="${pageContext.request.contextPath}/admin/order_detail?o_idx=${Order_memberDTO.o_idx}&m_idx=${Order_memberDTO.m_idx}">${Order_memberDTO.p_name }</a></td>
                                                    <td>${Order_memberDTO.totalSum}</td>
                                                    <td>3000원</td>
                                                    <td class="center">
<%--                                                     <input type="hidden" name="o_state" id="o_state" value="${Order_memberDTO.o_state}"> --%>
                                                    <select name="selectOrderState" id="selectOrderState" onchange="changeOrderState(this.options[this.selectedIndex].value);">
                                                    	<option value = "0" >결제완료</option>
                                                    	<option value = "1" >배송준비중</option>
														<option value = "2" >배송중</option>
                                                    	<option value = "3" >배송완료</option>
                                                    </select>
                                                    <button type="button" class="btn btn-primary btn-xs" 
                                                    onclick="${pageContext.request.contextPath}/admin/changeOrderState?o_idx=${Order_memberDTO.o_idx}&m_idx=${Order_memberDTO.m_idx}&o_state=${Order_memberDTO.o_state}">주문상태 변경</button>
                                                    
                                                    </td>
                                                </tr>
											</c:forEach>
                                            </tbody>
                                                
                                                </table>
                                                
													<!-- o_state 값 넘기는거 잘 모르겠음-->
                                                <script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
                                                <script type="text/javascript">
                                                function changeOrderState(selectedValue) {
													alert(selectedValue);
												}
													
                                                </script>
                                                
                                                </div>
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
        <script src="${pageContext.request.contextPath}/js/dataTables/jquery.dataTables.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/dataTables/dataTables.bootstrap.min.js"></script>

        <!-- Custom Theme JavaScript -->
        <script src="${pageContext.request.contextPath}/js/startmin.js"></script>

        <!-- Page-Level Demo Scripts - Tables - Use for reference -->
        <script>
            $(document).ready(function() {
                $('#dataTables-example').DataTable({
                        responsive: true
                });
            });
        </script>

    </body>
</html>
