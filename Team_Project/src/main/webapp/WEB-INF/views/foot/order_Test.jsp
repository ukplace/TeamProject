<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/views/member/msg.jsp</title>

<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
<script type="text/javascript">
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp92591746"); // 예: imp00000000

	function requestPay() {
		// IMP.request_pay(param, callback) 결제창 호출
		IMP.request_pay({ // param
			pg : "html5_inicis",
			pay_method : "card",
			merchant_uid : "2",
			name : "shushu", // 상품명
			amount : "1000", // 가격
			buyer_email : "t@t",
			buyer_name : "홍길동",
			buyer_tel : "0101234567",
			buyer_addr : "부산시 부산진구 부전동",
			buyer_postcode : "01181"
		}, function(rsp) { // callback
			if (rsp.success) {
				//        
				// 결제 성공 시 로직, 주소줄로 데이터 값을 가져감. => 컨트롤러에서 리퀘스트로 가져올 수 있음.
			} else {
				//        	  location.href="${pageContext.request.contextPath}/foot/order_Ok";
				//        		location.href="${pageContext.request.contextPath}/foot/order_No;
				// 테스트용으로 취소시, 결제 완료되게 해놓음.

				// location.href="${pageContext.request.contextPath}/sub/payFail";
				// 결제 실패 시 로직,

			}
		});
	}
</script>

</head>
<body>
	<button type="button" onclick="requestPay()">결제하기</button>
</body>
</html>