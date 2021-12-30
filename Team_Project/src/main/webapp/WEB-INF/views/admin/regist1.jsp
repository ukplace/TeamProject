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
        
              
      
         
       </table>
       
               <Title>Category</Title> 
        <Meta Http-Equiv="Content-Type" Content="text/html; charset=utf-8">
        <script type="text/javascript" src="http://code.jquery.com/jquery.js"></script>
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
                            <h1 class="page-header">Blank</h1>
                            
                            <table border=1 width=100% styletable-layout:fixed cellspacing=() cellpadding=1>
       <tr>
          <td width=45% id=td1 align="center">대분류</td>
          <td width=45% id=td2 align="center">소분류</td>
       </tr>
       <td>   
          <select name="mainCategory" size=5 style=width:100%>
         </select>
      </td>
      <td>   
          <select name="subCategory"  size=5 style=width:100%>
         </select>
      </td>   
      </tr>
      <tr>
<script type="text/javascript">
 
$(document).ready(function() {
    
    //Main 카테고리를 선택 할때 마다 AJAX를 호출할 수 있지만 DB접속을 매번 해야 하기 때문에 main, sub카테고리 전체을 들고온다.
    
    //****************이부분은 DB로 셋팅하세요.
    //Main 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var mainCategoryArray = new Array();
    var mainCategoryObject = new Object();
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "1";
    mainCategoryObject.main_category_name = "MAN";
    mainCategoryArray.push(mainCategoryObject);
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "2";
    mainCategoryObject.main_category_name = "WOMAN";
    mainCategoryArray.push(mainCategoryObject);
    
    mainCategoryObject = new Object();
    mainCategoryObject.main_category_id = "3";
    mainCategoryObject.main_category_name = "KIDZ";
    mainCategoryArray.push(mainCategoryObject);
    
    //Sub 카테고리 셋팅 (DB에서 값을 가져와 셋팅 하세요.)
    var subCategoryArray = new Array();
    var subCategoryObject = new Object();
    
    //스포츠에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "1"
    subCategoryObject.sub_category_name = "정장화"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "2"
    subCategoryObject.sub_category_name = "로퍼&모카신"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "스니커즈"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "스포츠/아웃도어"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "1";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "하이탑/부츠"    
    subCategoryArray.push(subCategoryObject);
    
    //공연에 해당하는 sub category 리스트
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "1"
    subCategoryObject.sub_category_name = "연극"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "2"
    subCategoryObject.sub_category_name = "뮤지컬"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "3"
    subCategoryObject.sub_category_name = "오페라"    
    subCategoryArray.push(subCategoryObject);
    
    subCategoryObject = new Object();
    subCategoryObject.main_category_id = "2";
    subCategoryObject.sub_category_id = "4"
    subCategoryObject.sub_category_name = "콘서트"    
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
        });
        
    });
    //*********** 1depth카테고리 선택 후 2depth 생성 END ***********
        
});
</script>
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

</body>
</html>