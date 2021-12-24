<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
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
        
        <script type="text/javascript">
        function productDelete() {
			alert("제품삭제버튼");
		}
        </script>
        
        
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
                            <h1 class="page-header">제품디테일</h1>
                        </div>
                        <!-- /.col-lg-12 -->
                        
                    </div>
                    <!-- /.row -->
                    
                    
	                    	<div class="col-lg-12">
	                    	<!-- /.panel-heading -->
	                    		<div class="panel-body"> 
	                    			 <div class="table-responsive">
	                            		<table class="table table-striped table-bordered table-hover">
	                            			<thead>
	                            			<colgroup>
	                            				<col style="width: 20%">
	                            			</colgroup>
                                                <tr>
                                                	<th></th>
                                                    <th width="25">#</th>
                                                    <th width="200">제품번호</th>
                                                    <th>101</th>
                                                </tr>
                                            </thead>
                                            
                                       		<tbody>
			                            		<tr>
			                            			<td rowspan="11">
			                            				<img alt="pdetail_img" src="${pageContext.request.contextPath}/images/pdetail_img.jpg" width="450" height="450">
			                            			</td>
                                                    <td>1</td>
                                                    <td>제품 이름</td>
                                                    <td>SHUSHU1217</td>
			                            		</tr>
	                            	
     
                                                <tr>
                                                    <td>2</td>
                                                    <td>제품 설명</td>
                                                    <td>콜라보레이션으로 탄생한 슈퍼어스 슈즈입니다.</td>
                                                </tr>
                                                <tr>
                                                    <td>3</td>
                                                    <td>카테고리 - 대분류</td>
                                                    <td>여성</td>
                                                </tr>
                                                
                                                <tr>
                                                    <td>4</td>
                                                    <td>카테고리 - 소분류</td>
                                                    <td>운동화</td>
                                                </tr>
                                                <tr>
                                                    <td>5</td>
                                                    <td>사이즈</td>
                                                    <td>240</td>
                                                </tr>
                                                <tr>
                                                    <td>6</td>
                                                    <td>색상</td>
                                                    <td>GREEN</td>
                                                </tr>
                                                <tr>
                                                    <td>7</td>
                                                    <td>제품 가격</td>
                                                    <td>127,000원</td>
                                                </tr>
                                                <tr>
                                                    <td>8</td>
                                                    <td>제품 할인</td>
                                                    <td>0</td>
                                                </tr>
                                                <tr>
                                                    <td>9</td>
                                                    <td>품절 여부</td>
                                                    <td>N</td>
                                                </tr>
                                                <tr>
                                                    <td>10</td>
                                                    <td>제품 재고</td>
                                                    <td>50</td>
                                                </tr>
                                                <tr>
                                                    <td>11</td>
                                                    <td>주문 날짜</td>
                                                    <td>2021-12-17</td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    </div>
                                    <!-- /.table-responsive -->
                                </div>
                                <!-- /.panel-body -->
                            
                        </div>
                        
                    
                <div class="col-lg-12" align="center">  
                <button type="button" class="btn btn-primary">수정</button>
                <button type="button" class="btn btn-primary" onclick="productDelete()">삭제</button>
                </div>
                
                
                
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