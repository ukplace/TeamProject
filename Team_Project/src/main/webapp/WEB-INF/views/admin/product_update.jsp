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
<form action="${pageContext.request.contextPath}/admin/product_update_pro" method="post" name="updateForm" enctype="multipart/form-data"> 

	<input type="hidden" name="p_num" value="${ProductDTO.p_num}" />
	                    
   <table class="table-ca" width=60% tyletable-layout:fixed cellspacing=() cellpadding=1;>                 
       <tr >
          <td width=30% id=td1 align="center"> <h1>대 분 류</h1> </td>
          <td class="space"></td>
          <td width=30% id=td2 align="center"> <h1>소 분 류</h1> </td>
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
       <h1 class="page-header" align="center">제품수정</h1>
		<table >
      <!-- 제품명 -->
	      <tr>
			<th>카테고리-대분류</th>
			<td><input type="text" name="p_category" required="required" size="20" value="${ProductDTO.p_category}"></td>
		 </tr>
		 <tr>
			<th>카테고리-소분류</th>
			<td><input type="text" name="p_small_category" required="required" size="20" value="${ProductDTO.p_small_category}" ></td>
		 </tr>
		  <tr>
      		<th>제품명</th>
      		<td><input type="text" name="p_name" required="required" size="20" value="${ProductDTO.p_name}"></td>
      	
      	</tr>
      <!-- 제품가격 -->
      <tr>
      <th>제품 가격</th>
      <td>
      	<input type="text" name="p_price" width = 40px padding= 6px margin= 100px placeholder="제품가격입력" value="${ProductDTO.p_price}">
	 </td>
	 </tr>	
	 
	 	<!-- 제품색상 -->
		<tr>
			<th>제품 색상</th>
			<td>
				<input type="text" name="p_color" width = 40px padding= 6px margin= 100px placeholder="제품색상입력" value="${ProductDTO.p_color}">
			</td>
		</tr>	
	
<!-- 				<tr> -->
<!-- 					<th>색상</th> -->
<!-- 					<td> -->
<%-- 						<input type="text" name="p_color" required="required" size="10" value="${ProductDTO.p_color}"> --%>
<!-- 						<select name="selectColor" onchange="changeColor(this.value)"> -->
<!-- 						셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
<!-- 						this 주면 여기 이 태그가 날라간다!  -->
<!-- 						셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
<!-- 							<option value="">직접입력</option>	 -->
<!-- 							<option value="빨강">빨강</option> -->
<!-- 							<option value="주황">주황</option> -->
<!-- 							<option value="노랑">노랑</option> -->
<!-- 							<option value="초록">초록</option> -->
<!-- 							<option value="파랑">파랑</option> -->
<!-- 							<option value="남색">남색</option> -->
<!-- 							<option value="보라">보라</option> -->
<!-- 						</select> -->
<!-- 					</td> -->
<!-- 				</tr> -->
				
				<tr>
			      <th rowspan="2">대표 사진</th>
			      <td>
			      	<input type="file" id="p_img" name="file" width = 40px value="사진등록" required="required"/>
				 </td>
				 </tr>
				 
				 <tr>
				 	<td>
				 		<div class="select_img">
				 			<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_thumImg}" class="product-img"/>
				 		</div>
				 	</td>
				 </tr>
				 
				 <tr>
				 	<td colspan="2"> 
						 <%=request.getRealPath("/") %>	
					</td>
				 </tr>
<!-- 				 <tr> -->
<!-- 				 	<td> -->
<!-- 				 <div class="select_img"><img src="" width="310" height="310" /></div> -->
<!-- 				 <div class="select_img"> -->
<!-- 				 	<div class="product-img-div"> -->
<%-- 				 		<img alt="product_img" src="${pageContext.request.contextPath}/images/pdetail_img.jpg" class="product-img" /> --%>
<!-- 				 	</div> -->
<!-- 				 </div> -->
<!-- 					</td> -->
<!-- 				 </tr> -->
				 <%//=request.getRealPath("/") %>
				
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
						<textarea rows="20" cols="41" name="p_explain" value="${ProductDTO.p_explain}"></textarea>
					</td>
				</tr>
				
					<tr>
						<td colspan="2" align="center">
							<input type="submit" class="btn btn-default" value="수정" >
							<button type="button" id="back_Btn" class="btn btn-warning">취소</button>
<!-- 	   					

}	
   						</td>
   					</tr>
   					
   					
   					
   			
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





  
<script type="text/javascript">

// 상품리셋 버튼 클릭 이벤트
$("#back_Btn").click(function(){
 	//history.back();
 	location.href = "${pageContext.request.contextPath}/admin/product_update?num=${ProductDTO.p_num}";
});   

// 상품삭제 버튼 클릭 이벤트
$("#deleteBtn").click(function(){
	// 상품 삭제 확인
	if(confirm("상품을 삭제하시겠습니까?")){
		document.updateForm.action="${pageContext.request.contextPath}/admin/delete?num=${ProductDTO.p_num}"
		document.updateForm.submit();
	}
});


$("#p_img").change(function(){
	   if(this.files && this.files[0]) {
		   var reader = new FileReader;
	    reader.onload = function(data) {
	     $(".select_img img").attr("src", data.target.result).width(500);        
	    }
	    reader.readAsDataURL(this.files[0]);
	   }
	  });
 


function changeColor(color){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.update.p_color.value = color;
}

function changeCa(ca){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.updateForm.p_small_category.value = ca;
}
function changeCa1(ca){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.updateForm.p_category.value = ca;
}

function changeSize(size){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.updateForm.p_size.value = size;
}


// ============================================================================================================================
 
	
$(document).ready(function() {
    
    //Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.
    
    //****************이부분은 DB로 셋팅하세요.
    //Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var mainCategoryArray = new Array();
    var mainCategoryObject = new Object();
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "MEN";
    mainCategoryObject.main_category_name = "MEN";
    mainCategoryArray.push(mainCategoryObject);
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "WOMEN";
    mainCategoryObject.main_category_name = "WOMAN";
    mainCategoryArray.push(mainCategoryObject);
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "KIDS";
    mainCategoryObject.main_category_name = "KIDS";
    mainCategoryArray.push(mainCategoryObject);
    
    //Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var subCategoryArray = new Array();
    var subCategoryObject = new Object();
    
    //남성에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "구두"
    subCategoryObject.sub_category_name = "구두"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "스니커즈"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "러닝화"
    subCategoryObject.sub_category_name = "러닝화"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "아웃도어"
    subCategoryObject.sub_category_name = "아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
//     subCategoryObject = new Object();
//     subCategoryObject.main_category_id = "MEN";
//     subCategoryObject.sub_category_id = "하이탑/부츠"
//     subCategoryObject.sub_category_name = "하이탑/부츠"    
//     subCategoryArray.push(subCategoryObject);
    
    //여성에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "구두/힐"
    subCategoryObject.sub_category_name = "구두/힐"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "스니커즈"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "러닝화"
    subCategoryObject.sub_category_name = "러닝화"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "아웃도어"
    subCategoryObject.sub_category_name = "아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
    //키즈에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "스니커즈"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "러닝화"
    subCategoryObject.sub_category_name = "러닝화"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "구두"
    subCategoryObject.sub_category_name = "구두"    
    subCategoryArray.push(subCategoryObject);
    
    //****************이부분은 DB로 셋팅하세요.
    
    
    //메인 카테고리 셋팅
    var mainCategorySelectBox = $("select[name='mainCategory']");
    
    for(var i=0;i<mainCategoryArray.length;i++){
        mainCategorySelectBox.append("<option value='"+mainCategoryArray[i].main_category_id+"'>"+mainCategoryArray[i].main_category_name+"</option>");
    }
    
    //*********** 1depth카테고리 선택 후 2depth 생성 START ***********
    $(document).on("change","select[name='mainCategory']",function(){
        
        //두번째 셀렉트 박스를 삭제 시킨다.
        var subCategorySelectBox = $("select[name='subCategory']");
        subCategorySelectBox.children().remove(); //기존 리스트 삭제
        
        //선택한 첫번째 박스의 값을 가져와 일치하는 값을 두번째 셀렉트 박스에 넣는다.
        $("option:selected", this).each(function(){
            var selectValue = $(this).val(); //main category 에서 선택한 값
            subCategorySelectBox.append("<option value=''>전체</option>");
            for(var i=0;i<subCategoryArray.length;i++){
                if(selectValue == subCategoryArray[i].main_category_id){
                    
                    subCategorySelectBox.append("<option value='"+subCategoryArray[i].sub_category_id+"'>"+subCategoryArray[i].sub_category_name+"</option>");
                    
                }
            }
            
            return selectValue
        });
        
    });
    //*********** 1depth카테고리 선택 후 2depth 생성 END ***********
        
});
</script>

</body>
</html>