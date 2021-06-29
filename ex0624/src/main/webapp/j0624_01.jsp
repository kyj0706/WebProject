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
		out.println("getRequestURL(전체 주소를 다보여준다): "+request.getRequestURL()+"<br>");
		out.println("getContextPath : "+request.getContextPath()+"<br>");
		out.println("getRequestURI : "+request.getRequestURI()+"<br>");
		out.println("getRemoteAddr : "+request.getRemoteAddr()+"<br>");
		
		String uriName = request.getRequestURI();
		String pathName = request.getContextPath();
		
		out.println("파일명2 : "+uriName.substring(7,20)+"<br>");
		out.println("파일명1 :"+ uriName.substring(pathName.length()));
		
		
	%>
	</body>
</html>