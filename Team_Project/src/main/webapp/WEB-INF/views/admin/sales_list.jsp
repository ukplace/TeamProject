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
                            <h1 class="page-header">매출 리스트</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                    </div>
                    <!-- /.row -->
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="panel panel-default">
<!--                                 <div class="panel-heading"> -->
                                <h3> &nbsp;&nbsp; 총 매출</h3> 
                                <hr>
                                 
<!--                                 </div> -->
                                <!-- /.panel-heading -->
                                <div class="panel-body">
                                    <div class="table-responsive">
                                        <table class="table table-striped table-bordered table-hover">
                                            <thead>
                                                <tr>
                                                    <th>카테고리</th>
                                                    <th>모델명</th>
                                                    <th>판매량</th>
                                                    <th>판매단가</th>
                                                    <th>매출</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                              
                                                <tr class="gradeU">
                                                    <td>Men/Women/Kids</td>
                                                    <td>All others</td>
                                                    <td>-</td>
                                                    <td class="center">-</td>
                                                    <td class="center">U</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    
                                    
										<div class="panel-body" align="center">
											<c:if test="${pageDTO.startPage > pageDTO.pageBlock }">
												<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/admin/sales_list?pageNum=${pageDTO.startPage - pageDTO.pageBlock}'">
												Prev
												</button>
											</c:if>
											
											<c:forEach var="i" begin="${pageDTO.startPage }" end="${pageDTO.endPage }" step="1">
												<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/admin/sales_list?pageNum=${i}'">
												${i}
												</button>
											</c:forEach>
											
											<c:if test="${pageDTO.endPage < pageDTO.pageCount }">
												<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/admin/sales_list?pageNum=${pageDTO.startPage + pageDTO.pageBlock}'">
												Next
												</button>
											</c:if>
										</div>
                             
                    <!-- /.row -->
                         <div class="panel-body">
                         <div>
                         판매 TOP 3
                         </div>
                                    <div class="table-responsive">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th>#</th>
                                                    <th>카테고리</th>
                                                    <th>모델명</th>
                                                    <th>판매량</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr class="success">
                                                    <td>1</td>
                                                    <td>Men</td>
                                                    <td>Nike</td>
                                                    <td>55</td>
                                                </tr>
                                               
                                            </tbody>
                                        </table>
                                    </div>
                              
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.panel-body -->
                                
                                   
                                
                            </div>
                            <!-- /.panel -->
                        </div>
                        <!-- /.col-lg-6 -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.container-fluid -->
     

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
