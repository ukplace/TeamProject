<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	<form method="post" name="registForm" enctype="multipart/form-data">                     
		<input type="hidden" name="n" value="${ProductDTO.p_num}" />
<!--    <table class="table-ca" width=60% tyletable-layout:fixed cellspacing=() cellpadding=1;>                  -->
<!--        <tr > -->
<!--           <td width=30% id=td1 align="center"> 대 분 류 </td> -->
<!--           <td class="space"></td> -->
<!--           <td width=30% id=td2 align="center"> 소 분 류 </td> -->
<!--        </tr> -->
<!--        <tr> -->
<!--        <td>    -->
<!--           <select name="mainCategory" size=10 style=width:100%  onchange="changeCa1(this.value)"> -->
<!--          </select> -->
<!--       </td> -->
<!--       	<td class="space"></td> -->
<!--       <td>    -->
<%--           <select name="subCategory"  size=10 style=width:100% value="${selectValue }" onchange="changeCa(this.value)"> --%>
<!--          </select> -->
<!--       </td> -->
<!--       </tr>    -->
<!-- 	</table> -->
      	
	<div class="main">
	<div class=table-regist>
       <h1 class="page-header" align="center">제품조회</h1>
		<table >
      <!-- 제품명 -->
	      <tr>
			<th width="200px">카테고리-대분류</th>
			<td>${ProductDTO.p_category}</td>
		 </tr>
		 <tr>
			<th>카테고리-소분류</th>
			<td>${ProductDTO.p_small_category}</td>
		 </tr>
		  <tr>
      		<th>제품명</th>
      		<td>${ProductDTO.p_name}<td></td>
      	
      	</tr>
      
      	
      <!-- 제품가격 -->
      <tr>
      <th>제품 가격</th>
      <td>
      	${ProductDTO.p_price}
	 </td>
	 </tr>	
	 
		<!-- 제품가격 -->
		<tr>
			<th>제품 색상</th>
			<td>
				${ProductDTO.p_color}
			</td>
		</tr>
	</table>
<!-- 				<tr> -->
<!-- 					<th>색상</th> -->
<!-- 					<td> -->
<!-- 						<input type="text" name="p_color" required="required" size="10"> -->
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
<table border="1">
			<tr>
				<th>사이즈</th>
				<c:forEach  var="qtyDTO" items="${qtyList }">
					<td>
						${qtyDTO.p_size }
						
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입란에 표시 -->
						<!-- this 주면 여기 이 태그가 날라간다!  -->
						<!-- 셀렉트박스 도메인 선택 시 해당 값을 이메일의 도메인 입력란에 표시 -->
						
					</td>
					</c:forEach>
				</tr>	
				
				<!-- 재고 -->
		      	<tr>
		      		<th>재고</th>
		      		<c:forEach  var="qtyDTO" items="${qtyList }">
		      		<td>
		      	 		${qtyDTO.p_stock }
		      		</td>
		      		</c:forEach>	
				</tr>
</table>				
		<table>		
				<tr>
				<td>
				<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/admin/product_qty_insert?num=${ProductDTO.p_num}'">수량 추가</button>
				</td>
				<td>
				<button type="button" class="btn btn-default" onclick="location.href='${pageContext.request.contextPath}/admin/product_qty_update?num=${ProductDTO.p_num}'">수량 초기화 및 생성</button>
				</td>
				</tr>
				
				
				<tr>
			      <th rowspan="2">대표 사진</th>
			      <td>
				 </td>
				 </tr>
				 
				 <tr>
				 	<td>

				 <div class="select_img"></div>
				 <div class="select_img">
				 	<div class="product-img-div">
				 		<div class="select_img">
				 			<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_thumImg}" class="product-img"/>
				 		</div>
				 	</div>
				 </div>

				 	</td>
				 </tr>
				 
				 <tr>
				 	<td colspan="2"> 
<%-- 						 <%=request.getRealPath("/") %>	 --%>

					</td>
				 </tr>
										
				<tr>
				<th>제품 설명</th>
					<td>
						${ProductDTO.p_explain}
					</td>
				</tr>
				
					<tr>
						<td colspan="2" align="center">
						<div class="inputArea">
<!-- 								 <button type="button" id="modify_Btn" class="btn btn-warning">수정</button> -->
								 <a href="${pageContext.request.contextPath}/admin/product_update?num=${ProductDTO.p_num}" class="btn btn-default">수정</a>
								 <input type="button" class="btn btn-default" id="deleteBtn" value="삭제">
								 
								
								</div>
   						</td>
   					</tr>
   			
				</table>
	
   					</div>
					</div>	
	
<!-- </form> -->

			

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

//상품삭제 버튼 클릭 이벤트
$("#deleteBtn").click(function(){
	// 상품 삭제 확인
	if(confirm("상품을 삭제하시겠습니까?")){
		document.registForm.action="${pageContext.request.contextPath}/admin/delete?num=${ProductDTO.p_num}"
		document.registForm.submit();
	}
});
 

function changeColor(color){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.registForm.p_color.value = color;
}

function changeCa(ca){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.registForm.p_small_category.value = ca;
}
function changeCa1(ca){
	//SELECTBOX 선택항목(도메인)을 입력상자(email2)에 표시
	document.registForm.p_category.value = ca;
}

function changeSize(size){
	
	document.registForm.p_size.value = size;
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
    subCategoryObject.sub_category_id = "정장화"
    subCategoryObject.sub_category_name = "정장화"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "로퍼&모카신"
    subCategoryObject.sub_category_name = "로퍼&모카신"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "스니커즈"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "스포츠/아웃도어"
    subCategoryObject.sub_category_name = "스포츠/아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "MEN";
    subCategoryObject.sub_category_id = "하이탑/부츠"
    subCategoryObject.sub_category_name = "하이탑/부츠"    
    subCategoryArray.push(subCategoryObject);
    
    //여성에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "힐/펌프스"
    subCategoryObject.sub_category_name = "힐/펌프스"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "플랫슈즈/로퍼"
    subCategoryObject.sub_category_name = "플랫슈즈/로퍼"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "스니커즈/슬립온"
    subCategoryObject.sub_category_name = "스니커즈/슬립온"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "WOMEN";
    subCategoryObject.sub_category_id = "스포츠/아웃도어"
    subCategoryObject.sub_category_name = "스포츠/아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
    //키즈에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "스포츠/아웃도어"
    subCategoryObject.sub_category_name = "스포츠/아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "스니커즈"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "KIDS";
    subCategoryObject.sub_category_id = "플랫슈즈"
    subCategoryObject.sub_category_name = "플랫슈즈"    
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