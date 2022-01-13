<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>WEB-INF/views/member/msg.jsp</title>
</head>
<body>
	<script type="text/javascript">
		alert("결제 성공! 주문내역을 확인하세요.");
		location.href = "${pageContext.request.contextPath}/foot/index";
	</script>
</body>
</html>