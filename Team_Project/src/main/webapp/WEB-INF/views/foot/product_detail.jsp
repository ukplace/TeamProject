<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE HTML>
<html>
	<head>
	<title>Footwear - Free Bootstrap 4 Template by Colorlib</title>
   <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

	<link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600,700" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Rokkitt:100,300,400,700" rel="stylesheet">
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/icomoon.css">
	<!-- Ion Icon Fonts-->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/ionicons.min.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.min.css">

	<!-- Magnific Popup -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/magnific-popup.css">

	<!-- Flexslider  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/flexslider.css">

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.carousel.min.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
	
	<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	
	<script type="text/javascript">
    function buy(){ 
        var uid = '<%=(Integer)session.getAttribute("m_idx")%>';

         if(uid=='null'){ 
            alert("로그인이 필요한 항목입니다."); 
            location.href='${pageContext.request.contextPath}/foot/login';
            return false;
         }
         else{
       	  	var p_size = document.getElementById("p_size").value;
       	  	if(p_size == ""){
       	  		alert("사이즈를 선택하세요!");
       	  		return false;
       	  	}
//             location.href='${pageContext.request.contextPath}/foot/order';
            
         }
   }   
	</script>
	<script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
	<script >
	$(document).ready(function() {
		// class="review"
		$('#review').click(function(){
			// 글 가지고 오고 싶을때
// 				alert("2"+$('#p_num').val());
				$.ajax({
					url:'${pageContext.request.contextPath}/foot/reviewList',
					dataType:"JSON",
					data: {p_num:$('#p_num').val()},
					success:function(rdata){
						$.each(rdata,function(index,item){
// 							if(rdata==""){
// 							alert("등록된 리뷰가 없습니다.");
// 								$('table').append('<tr><td colspan=3>등록된 리뷰가 없습니다.</td></tr>');
// 							}
// 							else{
							$('table').append(
									'<tr><td>'+item.review_writer+'</td><td>'+item.review_content+'</td><td>'+item.review_score+'</td></tr>');
							// 테이블 가져와서 출력
// 							}
						});
					}
				});
			
			// 이벤트 멈춤
			$(this).unbind();
		});
	});
	
	</script>
<%-- 	<c:choose> --%>
<%-- 		<c:when test="${review>0 }"> --%>
<!-- 			<tr><td class="contxt">item.m_idx</td><td>item.review_subject</td><td>item.review_date</td></tr> -->
<%-- 		</c:when> --%>
<%-- 		<c:otherwise> --%>
<!-- 			<tr><td>등록된 리뷰가 없습니다.</td></tr> -->
<%-- 		</c:otherwise> --%>
<%-- 	</c:choose> --%>
<style type="text/css">
#addCartBtn{
	border: thin;
	background-color: orange;
	color: white;
	border-radius: 5px;
	padding: 8px 30px;
}

#buyBtn{
	border: thin;
	background-color: green;
	color: white;
	border-radius: 5px;
	padding: 8px 60px;
}

</style>
	
	</head>
	<body>
	<div class="colorlib-loader"></div>

	<div id="page">
			<nav class="colorlib-nav" role="navigation">
		<!-- 헤더들어가는곳 -->
		<jsp:include page="../inc/top.jsp"></jsp:include>
		<!-- 헤더들어가는곳 -->
	</nav>

<!-- 주문 form -->
<!--method="post" class="colorlib-form" name="Direct_order" action="${pageContext.request.contextPath}/foot/Direct_order"  -->	
<form action="${pageContext.request.contextPath}/foot/Direct_order" method="post" class="order_form" name="Direct_order" onsubmit="return buy()" >                     
<!-- 주문 form -->	
	<input type="hidden" id="p_num" name="p_num" value="${ProductDTO.p_num}" />		
	
<!-- 	private int cart_count; -->

		<div class="breadcrumbs">
			<div class="container">
				<div class="row">
					<div class="col">
						<p class="bread"><span><a href="${pageContext.request.contextPath}/foot/index/">Home</a></span> / <span>Product Details</span></p>
					</div>
				</div>
			</div>
		</div>


		<div class="colorlib-product">
			<div class="container">
				<div class="row row-pb-lg product-detail-wrap">
					<div class="col-sm-6">
						<div class="owl-carousel">
							<div class="item">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_img}" class="img-fluid" alt="Free html5 bootstrap 4 template"/>
									</a>
								</div>
							</div>
							<div class="item">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_img}" class="img-fluid" alt="Free html5 bootstrap 4 template"/>
									</a>
								</div>
							</div>
							<div class="item">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_img}" class="img-fluid" alt="Free html5 bootstrap 4 template"/>
									</a>
								</div>
							</div>
							<div class="item">
								<div class="product-entry border">
									<a href="#" class="prod-img">
										<img alt="product_img" src="${pageContext.request.contextPath}${ProductDTO.p_img}" class="img-fluid" alt="Free html5 bootstrap 4 template"/>
									</a>
								</div>
							</div>
						</div>
					</div>
					
					&emsp;&emsp;&emsp;
					<div class="col-sm-4">
						<div class="product-desc">
						 
					
							<h3>${ProductDTO.p_name}</h3>
							<br>
							<br>
							<p class="price">
								<span><fmt:formatNumber value="${ProductDTO.p_price}" pattern="#,###,###" />
								</span> 
							</p>
<!-- 							<p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p> -->
							
							<p class="size-wrap">
								<span>카테고리: ${ProductDTO.p_small_category}</span> 
							</p>
							
							<p class="size-wrap">
								<span>색상코드: ${ProductDTO.p_color}</span> 
							</p>
							
							
							
							<!-- 사이즈 -->
							<div class="size-wrap">
								<div class="block-26 mb-2">
									<h4>Size</h4>
				               <p>
									<input type="hidden" name="p_size" id="p_size">
								<select name="selectBox" id="selectBox" onchange="selectSize(this.value)">
									<option value="">사이즈선택</option>
									<c:forEach var="qtyDTO" items="${qtyList }" varStatus="status">		
									<option value="${qtyDTO.p_size }">${qtyDTO.p_size }</option>		               
									</c:forEach>	
								</select>
				               </p>
				            </div>
						</div>
					<br>
					
					<script type="text/javascript">
					// select값 input박스에 넣는 방법 2가지
// 					1) select box 의 onchange 함수 사용
// 						var selectSize = function(value){
// 							alert("select값 : " + value);
// 							$("#p_size").val(value);
// 						}
					
// 					2) jquery.change() 함수 사용
						$(document).ready(function(){
							$('#selectBox').change(function(){
								var selectValue = $(this).val();
// 								alert("select값 : " + selectValue);
								$('#p_size').val(selectValue);
							});
						});
					</script>
                  	
                  	
					<!-- 개수 -->	
                     <div class="input-group mb-4">
                     	<span class="input-group-btn ml" style="width:45px; margin:0;">
                        	<button type="button" class="quantity-left-minus btn"  data-type="minus" data-field="">
                           <i class="icon-minus2"></i>
                        	</button>
                    		</span>
                     	<input type="text" id="quantity" name="cart_count" class="form-control input-number" value="1" min="1" max="100">
                     	<span class="input-group-btn ml-1">
                        	<button type="button" class="quantity-right-plus btn" data-type="plus" data-field="">
                             <i class="icon-plus2"></i>
                         </button>
                     	</span>
                  	</div>
                  	
                  	<hr>
                  	<p class="size-wrap">
						<span>기본배송비: 3000원 / 80,000원 이상 무료배송</span> 
					</p>
							
                  	<br>
                  	
                  	<!-- 쇼핑카트 -->
				     <div class="input-group mb-4">  
<%-- 				     <a href="${pageContext.request.contextPath}/foot/wishlist" class="btn btn-primary btn-addtocart"><i class="icon-heart2"></i>Wish</a> --%>
					 <p class="addToCart">
						 <button type="button" class="addCart_btn" id="addCartBtn" value="cartBtn" >카트에 담기</button>
						 <script src="${pageContext.request.contextPath}/resources/script/jquery-3.6.0.js"></script>
						 <script>
						  $(".addCart_btn").click(function(){
							   var p_num = $("#p_num").val();
							   var cart_count = parseInt($("#quantity").val());
							   var p_size = $('#p_size').val();
// 									alert('p_size 값 : ' + p_size);
							   var data = {
									   p_num : p_num,
									   cart_count : cart_count,
									   p_size : p_size
							     };
							   
							   $.ajax({
							    url : "${pageContext.request.contextPath}/foot/addCart",
							    type : "post",
							    data : data,
							    success : function(result){
							    	/* alert("카트담기 성공");
							    	var quantity = parseInt($('#quantity').val());
							    	$("#quantity").val(1);
							     */
									if(result==1){
								    	 alert("카트 담기 성공");
								    	 if(confirm("장바구니로 이동하시겠습니까?")){
								    		 location.href='${pageContext.request.contextPath}/foot/cart';
								    	 }
								     	$("#quantity").val("1");
								    } else if(result==0){
							        	  alert("사이즈를 선택해주세요!");
							        	  return false;
							          }

							    },
							    error : function(result){
// 							     alert("카트 담기 실패");
							         var uid = '<%=(Integer)session.getAttribute("m_idx")%>';

							          if(uid=='null'){ 
							             alert("로그인이 필요한 항목입니다."); 
							             location.href='${pageContext.request.contextPath}/foot/login';
							             return false;
							          }
							          else{
							             location.href='${pageContext.request.contextPath}/foot/addCart';
							          }
							          
							          
							    }
							   });
							  });
						 </script>
						</p>
					 
<%-- 					 ${pageContext.request.contextPath}/foot/Direct_order" class="btn btn-success btn-addtocart" style="height:39px" --%>
					&emsp;	
					 <input type="submit" id="buyBtn" class="buyBtn" style="height:40px" value="Buy">
<!-- 				     <i class="icon-credit-card "></i>Buy</a> -->
		</form>
				     </div>             
				               
							
						</div>
					</div>
				</div>

				<div class="row">
					<div class="col-sm-12">
						<div class="row">
							<div class="col-md-12 pills">
								<div class="bd-example bd-example-tabs">
								  <ul class="nav nav-pills mb-3" id="pills-tab" role="tablist">

								    <li class="nav-item">
								      <a class="nav-link active" id="pills-description-tab" data-toggle="pill" href="#pills-description" role="tab" aria-controls="pills-description" aria-expanded="true">제품리뷰</a>
								    </li>
<!-- 								    <li class="nav-item"> -->
<!-- 								      <a class="nav-link" id="pills-manufacturer-tab" data-toggle="pill" href="#pills-manufacturer" role="tab" aria-controls="pills-manufacturer" aria-expanded="true">Manufacturer</a> -->
<!-- 								    </li> -->
<%-- 								    <c:choose> --%>
<%-- 								    	<c:when test="${reviewDTO.p_num =='' }"> --%>
<!-- 								    		<li>등록된 리뷰가 없습니다.</li > -->
<%-- 								    	</c:when> --%>
<%-- 								    	<c:otherwise> --%>
<!-- 								    <li class="nav-item"> -->
<!-- 								      	<a class="nav-link" id="review" data-toggle="pill" href="#" role="tab" aria-controls="pills-review" aria-expanded="true">리뷰</a> -->
<!-- 								    </li> -->
<%-- 								    	</c:otherwise> --%>
<%-- 								    </c:choose> --%>
								       <li class="nav-item">
								      	<a class="nav-link" id="review" data-toggle="pill" href="#" role="tab" aria-controls="pills-review" aria-expanded="true">상세보기</a>
								    </li>
								   
								    
<!-- 								     <div class="table" id="pills-tabContent"> -->
<!-- 								     	<div class="tab-pane border fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab"> -->
<!-- 										<table> -->
<!-- 										<tr style="font-size: 22x; text-align:center;"> -->
<!-- 											<p >제품 리뷰를 보여드립니다</p> -->
<!-- 											<td colspan=3>작성자</td><td colspan=8>내용</td><td colspan=3>별점</td> -->
<!-- 										</tr> -->
<!-- 										</table> -->
<!-- 								    </div> -->
								  <div class="table" margin:0 auto;">
								  <div class="tab-content" id="pills-tabContent">
								    <div class="tab-pane border fade show active" id="pills-description" role="tabpanel" aria-labelledby="pills-description-tab">
										<p style="font-size: 30x; text-align:center; margin:0 auto; padding-bottom: 5px;">제품 리뷰 보기</p>
										<table width="1000" height="150">
										<ul>
										<tr style="font-size: 22x; text-align:center;">
											<td>작성자</td><td>내용</td><td>별점</td>
										</tr>
										</table>
										</ul>
								    </div>
								</div>
								</div>    
								  </ul>


<!-- 								    <div class="tab-pane border fade" id="pills-manufacturer" role="tabpanel" aria-labelledby="pills-manufacturer-tab"> -->
<!-- 								      <p>Even the all-powerful Pointing has no control about the blind texts it is an almost unorthographic life One day however a small line of blind text by the name of Lorem Ipsum decided to leave for the far World of Grammar.</p> -->
<!-- 										<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrove, the headline of Alphabet Village and the subline of her own road, the Line Lane. Pityful a rethoric question ran over her cheek, then she continued her way.</p> -->
<!-- 								    </div> -->

<!-- 								    <div class="tab-pane border fade" id="pills-review" role="tabpanel" aria-labelledby="pills-review-tab"> -->
<!-- 								      <div class="row"> -->
<!-- 								   		<div class="col-md-8"> -->
<!-- 								   			<h3 class="head">23 Reviews</h3> -->
<!-- 								   			<div class="review"> -->
<%-- 										   		<div class="user-img" style="background-image: url(${pageContext.request.contextPath}/images/person1.jpg)"></div> --%>
<!-- 										   		<div class="desc"> -->
<!-- 										   			<h4> -->
<!-- 										   				<span class="text-left">Jacob Webb</span> -->
<!-- 										   				<span class="text-right">14 March 2018</span> -->
<!-- 										   			</h4> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-half"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 									   					</span> -->
<!-- 									   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span> -->
<!-- 										   			</p> -->
<!-- 										   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p> -->
<!-- 										   		</div> -->
<!-- 										   	</div> -->
<!-- 										   	<div class="review"> -->
<%-- 										   		<div class="user-img" style="background-image: url(${pageContext.request.contextPath}/images/person2.jpg)"></div> --%>
<!-- 										   		<div class="desc"> -->
<!-- 										   			<h4> -->
<!-- 										   				<span class="text-left">Jacob Webb</span> -->
<!-- 										   				<span class="text-right">14 March 2018</span> -->
<!-- 										   			</h4> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-half"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 									   					</span> -->
<!-- 									   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span> -->
<!-- 										   			</p> -->
<!-- 										   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p> -->
<!-- 										   		</div> -->
<!-- 										   	</div> -->
<!-- 										   	<div class="review"> -->
<%-- 										   		<div class="user-img" style="background-image: url(${pageContext.request.contextPath}/images/person3.jpg)"></div> --%>
<!-- 										   		<div class="desc"> -->
<!-- 										   			<h4> -->
<!-- 										   				<span class="text-left">Jacob Webb</span> -->
<!-- 										   				<span class="text-right">14 March 2018</span> -->
<!-- 										   			</h4> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-half"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 									   					</span> -->
<!-- 									   					<span class="text-right"><a href="#" class="reply"><i class="icon-reply"></i></a></span> -->
<!-- 										   			</p> -->
<!-- 										   			<p>When she reached the first hills of the Italic Mountains, she had a last view back on the skyline of her hometown Bookmarksgrov</p> -->
<!-- 										   		</div> -->
<!-- 										   	</div> -->
<!-- 								   		</div> -->
<!-- 								   		<div class="col-md-4"> -->
<!-- 								   			<div class="rating-wrap"> -->
<!-- 									   			<h3 class="head">Give a Review</h3> -->
<!-- 									   			<div class="wrap"> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					(98%) -->
<!-- 									   					</span> -->
<!-- 									   					<span>20 Reviews</span> -->
<!-- 										   			</p> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					(85%) -->
<!-- 									   					</span> -->
<!-- 									   					<span>10 Reviews</span> -->
<!-- 										   			</p> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					(70%) -->
<!-- 									   					</span> -->
<!-- 									   					<span>5 Reviews</span> -->
<!-- 										   			</p> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					(10%) -->
<!-- 									   					</span> -->
<!-- 									   					<span>0 Reviews</span> -->
<!-- 										   			</p> -->
<!-- 										   			<p class="star"> -->
<!-- 										   				<span> -->
<!-- 										   					<i class="icon-star-full"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					<i class="icon-star-empty"></i> -->
<!-- 										   					(0%) -->
<!-- 									   					</span> -->
<!-- 									   					<span>0 Reviews</span> -->
<!-- 										   			</p> -->
<!-- 										   		</div> -->
<!-- 									   		</div> -->
<!-- 								   		</div> -->
<!-- 								   	</div> -->
<!-- 								    </div> -->
								  </div>
								</div>
				         </div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<footer id="colorlib-footer" role="contentinfo">
			<!-- 푸터들어가는곳 -->
			<jsp:include page="../inc/bottom.jsp"></jsp:include>
			<!-- 푸터들어가는곳 -->
		</footer>
	</div>

	<div class="gototop js-top">
		<a href="#" class="js-gotop"><i class="ion-ios-arrow-up"></i></a>
	</div>
	
	<!-- jQuery -->
	<script src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
   <!-- popper -->
   <script src="${pageContext.request.contextPath}/js/popper.min.js"></script>
   <!-- bootstrap 4.1 -->
   <script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
   <!-- jQuery easing -->
   <script src="${pageContext.request.contextPath}/js/jquery.easing.1.3.js"></script>
	<!-- Waypoints -->
	<script src="${pageContext.request.contextPath}/js/jquery.waypoints.min.js"></script>
	<!-- Flexslider -->
	<script src="${pageContext.request.contextPath}/js/jquery.flexslider-min.js"></script>
	<!-- Owl carousel -->
	<script src="${pageContext.request.contextPath}/js/owl.carousel.min.js"></script>
	<!-- Magnific Popup -->
	<script src="${pageContext.request.contextPath}/js/jquery.magnific-popup.min.js"></script>
	<script src="${pageContext.request.contextPath}/js/magnific-popup-options.js"></script>
	<!-- Date Picker -->
	<script src="${pageContext.request.contextPath}/js/bootstrap-datepicker.js"></script>
	<!-- Stellar Parallax -->
	<script src="${pageContext.request.contextPath}/js/jquery.stellar.min.js"></script>
	<!-- Main -->
	<script src="${pageContext.request.contextPath}/js/main.js"></script>


	


	<script>
		$(document).ready(function(){

		var quantitiy=0;
		   $('.quantity-right-plus').click(function(e){
		        
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		            
		            $('#quantity').val(quantity + 1);

		          
		            // Increment
		        
		    });

		     $('.quantity-left-minus').click(function(e){
		        // Stop acting like a button
		        e.preventDefault();
		        // Get the field name
		        var quantity = parseInt($('#quantity').val());
		        
		        // If is not undefined
		      
		            // Increment
		            if(quantity>0){
		            $('#quantity').val(quantity - 1);
		            }
		    });
		    
		});
		

		// 사이즈선택
// 		$("#pd_size_list li").on("click", function(e) {
// 			console.log("p_size li");
// 		});
		
// 		$("#pd_size_list ul").children('li').off().on('click', function(e) {
// 			console.log($(this).text());
// 		})
		
// 		$("pd_size_list li").on('click', function(e) {
// 			if($(this).parent("pd_size_list").length > 0) {
// 				console.log("p_size li");
// 			} else {
// 				console.log($(this).text());
// 			}
// 		})

		$('#pd_size_list').on('click', 'li', function() {
			alert("사이즈 클릭됨");
			var p_size = document.pd_size_list.li.value;
			
		});
		
	</script>


	</body>
</html>

