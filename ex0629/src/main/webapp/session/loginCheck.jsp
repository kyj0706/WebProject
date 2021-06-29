<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>loginCheck</title>
	</head>
	<body>
		<%
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		if(id.equals("aaa") && pw.equals("1234")){
			//섹션넣기
		/* 	session.setAttribute("session_id", "aaa");
			session.setAttribute("session_nName", "섹션즈"); */
			session.setAttribute("session_flag", "success");
			response.sendRedirect("./index.jsp");
		}else{
			//id,pw 불일치 ->alert 호출 할거여 
			response.sendRedirect("login.jsp?flag=fail");
			
		}
		
		
		
		%>
	
	
	</body>
</html>