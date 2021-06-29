<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
	Cookie[] cookieAll = request.getCookies(); //쿠키를 가지고와 ~ 
	
	if(cookieAll != null){
		
		for(int i=0; i<cookieAll.length; i++){
			cookieAll[i].setMaxAge(0);
			response.addCookie(cookieAll[i]);
		}
			
		response.sendRedirect("./main.jsp");
	}
	
	%>
	
	</body>
</html>