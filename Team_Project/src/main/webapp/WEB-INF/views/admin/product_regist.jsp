<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품등록 페이지</title>
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
        
              
      
         

       
               <Title>Category</Title> 
        <Meta Http-Equiv="Content-Type" Content="text/html; charset=utf-8">

        
 <style type="text/css">
 .regist-button{
 	align: center;
 	
 }
 
 .table-regist{
 	margin : auto;
 	padding : 40px;
 	background: #f0f8ff;
 	width: 60%;
 	
 
 }
 
 
 .btn.btn-primary.btn-lg{
 	text-align: center;
 }
 
        
 .table-ca{
  	border-collapse: separate;
 	border-spacing: 20px 0;
 	margin: auto;
 }
 td.space{
  border: 10px solid #fff;
  width : 3%
 }
 .main{
	margin : 50px;
 	width : 60%
 	align-content: center;
 }
 	table {
		margin: auto;
		width: 480px;
	}
	th{
			text-align : center;
	}
	tr {
		height: 40px;
	}
	td {
		margin : auto;
		padding-left : 5px;
	}
	
	.select_img img {margin:20px 0;}
</style>
</head>

<body>
<div id="wrapper">

			<!-- 네비게이션 들어간곳  -->
            <jsp:include page="../inc/nav.jsp"></jsp:include>
          	<!-- 네비게이션 들어간곳  -->
            <!-- Page Content -->
            <div id="page-wrapper">
                <div class="container-fluid">
                    <div class="row">0
                        <div class="col-lg-12">
                            
<!--                             **폼태그 맨끝 코드 일단 빼놓음 onsubmit="return checkForm()"  -->
<form action="${pageContext.request.contextPath }/admin/product_regist_pro" method="post" name="registForm">                     
   <table class="table-ca" width=60% tyletable-layout:fixed cellspacing=() cellpadding=1;>                 
       <tr >
          <td width=30% id=td1 align="center"> 대 분 류 </td>
          <td class="space"></td>
          <td width=30% id=td2 align="center"> 소 분 류 </td>
       </tr>
       <tr>
       <td>   
          <select name="mainCategory" size=10 style=width:100%  onchange="changeCa1(this.value)">
         </select>
      </td>
      	<td class="space"></td>
      <td>   
          <select name="subCategory"  size=10 style=width:100% value="${selectValue }" onchange="changeCa(this.value)">
         </select>
      </td>
      </tr>   
      	</table>
      	
		<div class="main">
		<div class=table-regist>
       <h1 class="page-header" align="center">제품등록</h1>
		<table >
      <!-- 제품명 -->
	      <tr>
			<th>카테고리-대분류</th>
			<td><input type="text" name="p_category" required="required" size="20"></td>
		 </tr>
		 <tr>
			<th>카테고리-소분류</th>
			<td><input type="text" name="p_small_category" required="required" size="20" value="${selectValue }" ></td>
		 </tr>
		  <tr>
      		<th>제품명</th>
      		<td><input type="text" name="p_name" required="required" size="20"></td>
      	
      	</tr>
      <!-- 재고 -->
      	<tr>
      <th>재고</th>
      	<td>
      	  <input type="text" name="p_stock" width = 40px padding= 6px  margin= 100px  placeholder="재고수량입력">
      	</td>
      	</tr>
      <!-- 제품가격 -->
      <tr>
      <th>제품 가격</th>
      <td>
      	<input type="text" name="p_price" width = 40px padding= 6px margin= 100px placeholder="제품가격입력">
	 </td>
	 </tr>	
	
	<tr>
     <th>색상</th>
					<td>
						<input type="text" name="p_color" required="required" size="10">
						<select name="selectColor" onchange="changeColor(this.value)">
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
						<!-- this 주면 여기 이 태그가 날라간다!  -->
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
							<option value="">직접입력</option>	
							<option value="빨강">빨강</option>
							<option value="주황">주황</option>
							<option value="노랑">노랑</option>
							<option value="초록">초록</option>
							<option value="파랑">파랑</option>
							<option value="남색">남색</option>
							<option value="보라">보라</option>
						</select>
					</td>
				</tr>
			<tr>
				<th>사이즈</th>
					<td>
						<input type="text" name="p_size" required="required" size="10">
						<select name="selectSize" onchange="changeSize(this.value)">
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
						<!-- this 주면 여기 이 태그가 날라간다!  -->
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
							<option value="">직접입력</option>	
							<option value="220">220</option>
							<option value="235">235</option>
							<option value="240">240</option>
							<option value="245">245</option>
							<option value="250">250</option>
							<option value="255">255</option>
							<option value="260">260</option>
							<option value="265">265</option>
							<option value="270">270</option>
							<option value="275">275</option>
							<option value="280">280</option>
							
						</select>
					</td>
				</tr>		
				
				<tr>
			      <th rowspan="2">대표 사진</th>
			      <td>
			      	<input type="file" id="p_img" name="p_img" width = 40px value="사진등록" class="" onclick=>
				 </td>
				 </tr>
				 
				 	
				 <tr>
				 	<td>
				 <div class="select_img"><img src="${pageContext.request.contextPath}/images/pdetail_img.jpg" width="310" height="310"></div>
					</td>
				 </tr>
				
<!-- 				 <td align="center"> -->
<!-- 				 <div class="inputArea"> -->
<!--  						<label for="p_img">이미지</label> -->
<!--  						<input type="file" id="p_img" name="file" /> -->

 
					 
						 
<!-- 					</div> -->
<!-- 					</td> -->
<!-- 					</tr> -->
										
				<tr>
				<th>제품 설명</th>
					<td>
						<textarea rows="20" cols="41" name="p_explain"></textarea>
					</td></tr>
					<tr><td colspan="2" align="center">
						<input type="submit" class="btn btn-default" value="등록" >
	   					<input type="reset" class="btn btn-default" value="취소">
   					</td></tr>
   					
   					
   			
   				</table>
   				
   				</div>
		</div>	
			
	</form>


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
        <!-- product_regist Script -->
        <script src="${pageContext.request.contextPath}/js/p_regist.js"></script>





<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>    


</body>
</html>