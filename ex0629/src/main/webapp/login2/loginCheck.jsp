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
			
			
			//로그인성공
			if(id.equals("aaa") && pw.equals("1234")){
				Cookie c_flag = new Cookie("c_flag","success");
				c_flag.setMaxAge(1800);
				response.addCookie(c_flag);
				
				response.sendRedirect("./index.jsp");
			
			//로그인 실패
			}else{
				response.sendRedirect("./login.jsp");
			}
		
		%>
	
	</body>
</html>