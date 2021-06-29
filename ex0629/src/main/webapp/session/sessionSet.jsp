<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session Set</title>
	</head>
	<body>
	 <%
	 //session은 내부객체로 담았지만  오브젝트이다
	 	session.setAttribute("login_id", "aaa");
	 	session.setAttribute("login_nName", "succe");
	 	session.setAttribute("login_flag", "succe");
	 	
	 
	 %>
	 <a href="./sessionGet.jsp">섹션확인</a>
	
	</body>
</html>