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
                                                    <th class="text-center">이메일</th>
                                                    <th class="text-center">가입일자</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            
                                            <!-- 회원리스트 받아오는 부분 -->
                                          <C:FOREACH VAR="MEMBERDTO" ITEMS="${MEMBERLIST}"> 
 											<TR><TD>${MEMBERDTO.ID }</TD><TD>${MEMBERDTO.PASS }</TD> 
											<TD>${MEMBERDTO.NAME }</TD><TD>${MEMBERDTO.NAME }</TD>
												<TD>${MEMBERDTO.NAME }</TD></TR> 
											</C:FOREACH>
<!-- 											</table> -->
<%-- 											<a href="${pageContext.request.contextPath}/member/main">메인으로 이동</a> --%>

                                                <tr class="odd gradeX">
                                                    <td class="text-center col-md-1"><a href="">1</a></td>
                                                    <td class="text-center">손성형</td>
                                                    <td class="text-center">010-1234-5678</td>
                                                    <td class="text-center">thsthstjs@naver.com</td>
                                                    <td class="text-center">2021-12-15</td>
                                                </tr>
<!--                                                 <tr class="even gradeC"> -->
<!--                                                     <td>2</td> -->
<!--                                                     <td>제품사진2</td> -->
<!--                                                     <td>Jordon</td> -->
<!--                                                     <td class="center">7</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="odd gradeA"> -->
<!--                                                     <td>Trident</td> -->
<!--                                                     <td>Internet Explorer 5.5</td> -->
<!--                                                     <td>Win 95+</td> -->
<!--                                                     <td class="center">5.5</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="even gradeA"> -->
<!--                                                     <td>Trident</td> -->
<!--                                                     <td>Internet Explorer 6</td> -->
<!--                                                     <td>Win 98+</td> -->
<!--                                                     <td class="center">6</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="odd gradeA"> -->
<!--                                                     <td>Trident</td> -->
<!--                                                     <td>Internet Explorer 7</td> -->
<!--                                                     <td>Win XP SP2+</td> -->
<!--                                                     <td class="center">7</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="even gradeA"> -->
<!--                                                     <td>Trident</td> -->
<!--                                                     <td>AOL browser (AOL desktop)</td> -->
<!--                                                     <td>Win XP</td> -->
<!--                                                     <td class="center">6</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Firefox 1.0</td> -->
<!--                                                     <td>Win 98+ / OSX.2+</td> -->
<!--                                                     <td class="center">1.7</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Firefox 1.5</td> -->
<!--                                                     <td>Win 98+ / OSX.2+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Firefox 2.0</td> -->
<!--                                                     <td>Win 98+ / OSX.2+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Firefox 3.0</td> -->
<!--                                                     <td>Win 2k+ / OSX.3+</td> -->
<!--                                                     <td class="center">1.9</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Camino 1.0</td> -->
<!--                                                     <td>OSX.2+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Camino 1.5</td> -->
<!--                                                     <td>OSX.3+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Netscape 7.2</td> -->
<!--                                                     <td>Win 95+ / Mac OS 8.6-9.2</td> -->
<!--                                                     <td class="center">1.7</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Netscape Browser 8</td> -->
<!--                                                     <td>Win 98SE+</td> -->
<!--                                                     <td class="center">1.7</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Netscape Navigator 9</td> -->
<!--                                                     <td>Win 98+ / OSX.2+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.0</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.1</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.1</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.2</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.2</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.3</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.3</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.4</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.4</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.5</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.5</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.6</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.6</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.7</td> -->
<!--                                                     <td>Win 98+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.7</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Mozilla 1.8</td> -->
<!--                                                     <td>Win 98+ / OSX.1+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Seamonkey 1.1</td> -->
<!--                                                     <td>Win 98+ / OSX.2+</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Gecko</td> -->
<!--                                                     <td>Epiphany 2.20</td> -->
<!--                                                     <td>Gnome</td> -->
<!--                                                     <td class="center">1.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>Safari 1.2</td> -->
<!--                                                     <td>OSX.3</td> -->
<!--                                                     <td class="center">125.5</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>Safari 1.3</td> -->
<!--                                                     <td>OSX.3</td> -->
<!--                                                     <td class="center">312.8</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>Safari 2.0</td> -->
<!--                                                     <td>OSX.4+</td> -->
<!--                                                     <td class="center">419.3</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>Safari 3.0</td> -->
<!--                                                     <td>OSX.4+</td> -->
<!--                                                     <td class="center">522.1</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>OmniWeb 5.5</td> -->
<!--                                                     <td>OSX.4+</td> -->
<!--                                                     <td class="center">420</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>iPod Touch / iPhone</td> -->
<!--                                                     <td>iPod</td> -->
<!--                                                     <td class="center">420.1</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Webkit</td> -->
<!--                                                     <td>S60</td> -->
<!--                                                     <td>S60</td> -->
<!--                                                     <td class="center">413</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 7.0</td> -->
<!--                                                     <td>Win 95+ / OSX.1+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 7.5</td> -->
<!--                                                     <td>Win 95+ / OSX.2+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 8.0</td> -->
<!--                                                     <td>Win 95+ / OSX.2+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 8.5</td> -->
<!--                                                     <td>Win 95+ / OSX.2+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 9.0</td> -->
<!--                                                     <td>Win 95+ / OSX.3+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 9.2</td> -->
<!--                                                     <td>Win 88+ / OSX.3+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera 9.5</td> -->
<!--                                                     <td>Win 88+ / OSX.3+</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Opera for Wii</td> -->
<!--                                                     <td>Wii</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Nokia N800</td> -->
<!--                                                     <td>N800</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Presto</td> -->
<!--                                                     <td>Nintendo DS browser</td> -->
<!--                                                     <td>Nintendo DS</td> -->
<!--                                                     <td class="center">8.5</td> -->
<!--                                                     <td class="center">C/A<sup>1</sup> -->
<!--                                                     </td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeC"> -->
<!--                                                     <td>KHTML</td> -->
<!--                                                     <td>Konqureror 3.1</td> -->
<!--                                                     <td>KDE 3.1</td> -->
<!--                                                     <td class="center">3.1</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>KHTML</td> -->
<!--                                                     <td>Konqureror 3.3</td> -->
<!--                                                     <td>KDE 3.3</td> -->
<!--                                                     <td class="center">3.3</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>KHTML</td> -->
<!--                                                     <td>Konqureror 3.5</td> -->
<!--                                                     <td>KDE 3.5</td> -->
<!--                                                     <td class="center">3.5</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeX"> -->
<!--                                                     <td>Tasman</td> -->
<!--                                                     <td>Internet Explorer 4.5</td> -->
<!--                                                     <td>Mac OS 8-9</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">X</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeC"> -->
<!--                                                     <td>Tasman</td> -->
<!--                                                     <td>Internet Explorer 5.1</td> -->
<!--                                                     <td>Mac OS 7.6-9</td> -->
<!--                                                     <td class="center">1</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeC"> -->
<!--                                                     <td>Tasman</td> -->
<!--                                                     <td>Internet Explorer 5.2</td> -->
<!--                                                     <td>Mac OS 8-X</td> -->
<!--                                                     <td class="center">1</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>NetFront 3.1</td> -->
<!--                                                     <td>Embedded devices</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeA"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>NetFront 3.4</td> -->
<!--                                                     <td>Embedded devices</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">A</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeX"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>Dillo 0.8</td> -->
<!--                                                     <td>Embedded devices</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">X</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeX"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>Links</td> -->
<!--                                                     <td>Text only</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">X</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeX"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>Lynx</td> -->
<!--                                                     <td>Text only</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">X</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeC"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>IE Mobile</td> -->
<!--                                                     <td>Windows Mobile 6</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeC"> -->
<!--                                                     <td>Misc</td> -->
<!--                                                     <td>PSP browser</td> -->
<!--                                                     <td>PSP</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">C</td> -->
<!--                                                 </tr> -->
<!--                                                 <tr class="gradeU"> -->
<!--                                                     <td>Other browsers</td> -->
<!--                                                     <td>All others</td> -->
<!--                                                     <td>-</td> -->
<!--                                                     <td class="center">-</td> -->
<!--                                                     <td class="center">U</td> -->
<!--                                                 </tr> -->
<!--                                             </tbody> -->
<!--                                         </table> -->
<!--                                     </div> -->


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
