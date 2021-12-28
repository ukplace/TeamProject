<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
                            <h1 class="page-header">회원정보 리스트</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
                                <div class="panel-heading">
                                    <h4>회원 관리</h4>
                                </div>
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover" id="dataTables-example">
                                            <thead>
                                                <tr>
                                                    <th class="text-center col-md-2">회원번호</th>
                                                    <th class="text-center">회원명</th>
                                                    <th class="text-center">전화번호</th>
                                                    <th class="text-center">회원등급</th>
                                                    <th class="text-center">가입일자</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <!-- 회원리스트 받아오는 부분 -->
                                          <c:forEach var="memberDTO" items="${MemberList}"> 
 											<tr>
 												<td>
 													<a href ="${pageContext.request.contextPath}/admin/member_detail?m_idx=${memberDTO.m_idx}&page=${pageDTO.pageNum }">${memberDTO.m_idx }</a>
 												</td>
 												<td>
 													<a href ="${pageContext.request.contextPath}/admin/member_detail?m_idx=${memberDTO.m_idx}&page=${pageDTO.pageNum }">${memberDTO.m_email }</a>
 												</td> 
												<td>
													<a href ="${pageContext.request.contextPath}/admin/member_detail?m_idx=${memberDTO.m_idx}&page=${pageDTO.pageNum }">${memberDTO.m_tel }</a>
												</td>
												<td>
													<a href ="${pageContext.request.contextPath}/admin/member_detail?m_idx=${memberDTO.m_idx}&page=${pageDTO.pageNum }">${memberDTO.m_grade }</a>
												</td>
												<td>
													<a href ="${pageContext.request.contextPath}/admin/member_detail?m_idx=${memberDTO.m_idx}&page=${pageDTO.pageNum }">${memberDTO.m_date }</a>
												</td>
											</tr> 
											</c:forEach>
<!-- 											</table> -->
<%-- 											<a href="${pageContext.request.contextPath}/member/main">메인으로 이동</a> --%>


        
                                                
                                                
                                                
<!--                                                


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
