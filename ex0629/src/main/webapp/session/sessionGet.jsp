<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>session Get</title>
	</head>
	<body>
	<%
		//session 1개 가지고 오기
		String login_id =(String)session.getAttribute("login_id");
		//session 출력
		out.println("login_id : " +login_id+"<br>");	
		String login_nName =(String)session.getAttribute("login_nName");
		out.println("login_nName : " +login_nName+"<br>");	
		String login_flag =(String)session.getAttribute("login_flag");
		out.println("login_flag : " +login_flag+"<br>");	
	
		//session 1개 삭제
		session.removeAttribute("login_id");
		
		//session 전체삭제
		session.invalidate();
		
	%>
	
	<!-- 한번에 날릴거다   -->
	<a href="./sessionResult1.jsp">결과</a>
	</body>
</html>