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
		String id =request.getParameter("id");
		String pw =request.getParameter("pw");
		
		if(id.equals("kyj") && pw.equals("1234")){
			
			session.setAttribute("flag", "ok");
			response.sendRedirect("./index.jsp");
		}else{
			response.sendRedirect("login.jsp?flag=no");
		}
	%>
	
	</body>
</html>