<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>제품수정 페이지</title>
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
        
		<!-- review-img-div.css  -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/css/product-img-div.css">
	
	

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        
              
      
         

       
               <Title>Category</Title> 
        <Meta Http-Equiv="Content-Type" Content="text/html; charset=utf-8">
		<script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
        
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
<script type="text/javascript">

function changeSize1(size){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.getElementById("size1").value = size;
}
function changeSize2(size){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.getElementById("size2").value = size;
}
function changeSize3(size){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.getElementById("size3").value = size;
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
                            
<!--                             **폼태그 맨끝 코드 일단 빼놓음 onsubmit="return checkForm()"  -->
<form action="${pageContext.request.contextPath}/admin/product_qty_updatePro" method="post" name="updateForm2" id="updateForm2"> 

		<input type="hidden" name="p_num" value="${productDTO.p_num}" />
	
	<br>
	<br>
	<br>
	<br>
	
	<table>
      
      	
			<tr>
				<th>사이즈</th>
					<td>
						<input type="text" name="list[0].p_size" id="size_1" required="required" size="10" >
						<select name="selectSize" onchange="changeSize1(this.value)">
<!-- 						셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
<!-- 						this 주면 여기 이 태그가 날라간다!  -->
<!-- 						셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
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
      <th>재고</th>
      	<td>
      	  <input type="text" name="list[0].p_stock" width = 40px padding= 6px  margin= 100px  placeholder="재고수량입력" value="">
      	</td>
      	</tr>
				
				<tr>
				<th>사이즈</th>
					<td>
						<input type="text" name="list[1].p_size" id="size_2" required="required" size="10">
						<select name="selectSize" onchange="changeSize2(this.value)">
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
      <th>재고</th>
      	<td>
      	  <input type="text" name="list[1].p_stock" width = 40px padding= 6px  margin= 100px  placeholder="재고수량입력" >
      	</td>
      	</tr><tr>
				<th>사이즈</th>
					<td>
						<input type="text" name="list[2].p_size" id="size_3" required="required" size="10" value="">
						<select name="selectSize" onchange="changeSize3(this.value)">
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
      <th>재고</th>
      	<td>
      	  <input type="text" name="list[2].p_stock" width = 40px padding= 6px  margin= 100px  placeholder="재고수량입력" value="">
      	</td>
      	</tr>

								
				
					<tr>
						<td colspan="2" align="center">
							<input type="submit" class="btn btn-default" value="수정" >
							<button type="reset" id="back_Btn" class="btn btn-warning">취소</button>
   						</td>
   					</tr>
   					
   					
	</table>
	
	
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





  
<script type="text/javascript">

$("#p_img").change(function(){
	   if(this.files && this.files[0]) {
		   var reader = new FileReader;
	    reader.onload = function(data) {
	     $(".select_img img").attr("src", data.target.result).width(500);        
	    }
	    reader.readAsDataURL(this.files[0]);
	   }
	  });
 



// ============================================================================================================================
 
</script>

</body>
</html>