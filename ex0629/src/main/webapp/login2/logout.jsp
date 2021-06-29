<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<!-- 쿠키를 삭제하고 index로 다시 돌리면 되는거  -->
		<meta charset="UTF-8">
		<title>logout</title>
	</head>
	<body>
	<%
		Cookie[] cookieAll = request.getCookies();
		if(cookieAll !=null){ //쿠기가 있는지 확인용
			for(int i=0; i<cookieAll.length; i++){
				cookieAll[i].setMaxAge(0);
				response.addCookie(cookieAll[i]);
			}
		}
		response.sendRedirect("./index.jsp");
	%>
	
	</body>
</html>