<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<!-- 
페이지에서 다른 페이지로 데이터를 전송하는 방법
1. form(get, post-request.



 -->
	<head>
		<meta charset="UTF-8">
		<title>jsp:forwrd-param</title>
	</head>
	<body>
		
			
			<%request.setCharacterEncoding("utf-8"); %>	
		<jsp:forward page="result.jsp">
			<jsp:param  name="id" value="amdin" />
			<jsp:param  name="pw" value="1234" />
			<jsp:param  name="name" value="관리자" />
		</jsp:forward>
	
	</body>
</html>