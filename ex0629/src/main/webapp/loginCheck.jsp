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
		
		
		//원래는 DB에서 불러온다 . 없으니깐 일단 이렇게 해보자 
		if(id.equals("aaa") && pw.equals("1234")){
			Cookie cookie_id = new Cookie("login_id","aaa");
			Cookie cookie_nName = new Cookie("cookie_nName","쿠키님");
			Cookie cookie_flag = new Cookie("cookie_flag","suceess");
			cookie_id.setMaxAge(1800);
			cookie_nName.setMaxAge(1800);
			cookie_flag.setMaxAge(1800);
			response.addCookie(cookie_id);
			response.addCookie(cookie_nName);
			response.addCookie(cookie_flag);
			response.sendRedirect("./main.jsp"); 
		}else{
			Cookie cookie_flag = new Cookie("cookie_flag","fail");
			cookie_flag.setMaxAge(1800);
			response.addCookie(cookie_flag);
			response.sendRedirect("./login.jsp");
		}
	
	%>
	
	</body>
</html>