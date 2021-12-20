<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

  <!-- Navigation -->
            <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
                <div class="navbar-header">
                    <a class="navbar-brand" href="${pageContext.request.contextPath}/admin/index">Startmin</a>
                </div>

                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <ul class="nav navbar-nav navbar-left navbar-top-links">
                    <li><a href="${pageContext.request.contextPath}/foot/index"><i class="fa fa-home fa-fw"></i> Website</a></li>
                </ul>

                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown navbar-inverse">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-bell fa-fw"></i> <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-alerts">
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-comment fa-fw"></i> New Comment
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-twitter fa-fw"></i> 3 New Followers
                                        <span class="pull-right text-muted small">12 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-envelope fa-fw"></i> Message Sent
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-tasks fa-fw"></i> New Task
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li>
                                <a href="#">
                                    <div>
                                        <i class="fa fa-upload fa-fw"></i> Server Rebooted
                                        <span class="pull-right text-muted small">4 minutes ago</span>
                                    </div>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li>
                                <a class="text-center" href="#">
                                    <strong>See All Alerts</strong>
                                    <i class="fa fa-angle-right"></i>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> secondtruth <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="#"><i class="fa fa-user fa-fw"></i> User Profile</a>
                            </li>
                            <li><a href="#"><i class="fa fa-gear fa-fw"></i> Settings</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="${pageContext.request.contextPath}/admin/login"><i class="fa fa-sign-out fa-fw"></i> Logout</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <!-- /.navbar-top-links -->

                <div class="navbar-default sidebar" role="navigation">
                    <div class="sidebar-nav navbar-collapse">
                        <ul class="nav" id="side-menu">
                            <li class="sidebar-search">
                                <div class="input-group custom-search-form">
                                    <input type="text" class="form-control" placeholder="Search...">
                                    <span class="input-group-btn">
                                        <button class="btn btn-primary" type="button">
                                            <i class="fa fa-search"></i>
                                        </button>
                                </span>
                                </div>
                                <!-- /input-group -->
                            </li>
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/index" class="active"><i class="fa fa-dashboard fa-fw"></i> 메인페이지</a>
                            </li>
                            
                            
                            <!-- 제품관리 시작 -->
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 제품관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                	<li>	
                                        <a href="${pageContext.request.contextPath}/admin/product_regist">제품등록</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/product_list">제품 리스트</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 제품관리 끝 -->
                            <!-- 주문관리 시작 -->
                         	<li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 주문관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>   
                                        <a href="${pageContext.request.contextPath}/admin/order_list">주문 리스트</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 주문관리 끝 -->
                            <!-- 매출관리 시작 -->
                         	<li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 매출관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>   매출 리스트
                                        <!-- <a href="${pageContext.request.contextPath}/admin/salesList">매출 리스트</a> -->
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/morris">Morris.js Charts</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 매출관리 끝 -->
                            <!-- 회원관리 시작 -->
                         	<li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 회원관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>  
                                        <a href="${pageContext.request.contextPath}/admin/member_list ">회원 리스트</a> 
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 회원관리 끝 -->
                            <!-- 문의관리 시작 -->
                         	<li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 문의관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>  
                                        <a href="${pageContext.request.contextPath}/admin/notice">공지사항</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/fnq"> F & Q</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/qna"> Q & A</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 문의관리 끝 -->
                            <!-- 리뷰관리 시작 -->
                         	<li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> 리뷰관리<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                   <li>
										<a href="${pageContext.request.contextPath}/admin/reviewList">리뷰 리스트</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- 리뷰관리 끝 -->
                            
                            
                            
                            <!-- 테이블 시작 -->
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/tables"><i class="fa fa-table fa-fw"></i> Tables</a>
                            </li>
                            <!-- 테이블 끝 -->
                            <!-- chart 시작 -->
                            <li>
                                <a href="#"><i class="fa fa-bar-chart-o fa-fw"></i> Charts<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/flot">Flot Charts</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/morris">Morris.js Charts</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <!-- chart 끝 -->
                            <li>
                                <a href="${pageContext.request.contextPath}/admin/forms"><i class="fa fa-edit fa-fw"></i> Forms</a>
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-wrench fa-fw"></i> UI Elements<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/panels-wells">Panels and Wells</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/buttons">Buttons</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/notifications">Notifications</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/typography">Typography</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/icons"> Icons</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/grid">Grid</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-sitemap fa-fw"></i> Multi-Level Dropdown<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="#">Second Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Second Level Item</a>
                                    </li>
                                    <li>
                                        <a href="#">Third Level <span class="fa arrow"></span></a>
                                        <ul class="nav nav-third-level">
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                            <li>
                                                <a href="#">Third Level Item</a>
                                            </li>
                                        </ul>
                                        <!-- /.nav-third-level -->
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                            <li>
                                <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/blank">Blank Page</a>
                                    </li>
                                    <li>
                                        <a href="${pageContext.request.contextPath}/admin/login">Login Page</a>
                                    </li>
                                </ul>
                                <!-- /.nav-second-level -->
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

</body>
</html>