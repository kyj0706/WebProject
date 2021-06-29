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
			for(int i=0; i<cookieAll.length; i++){
				String cookieName = cookieAll[i].getName(); //key값가지고옴 
				String cookieValue = cookieAll[i].getValue();//value 값 가지고 옴
				
				out.println("쿠키 :" +cookieName+",");
				out.println(cookieValue+"<br>");
				
				//모두 삭제해보기
				cookieAll[i].setMaxAge(0);
				response.addCookie(cookieAll[i]);
			}

		%>
		<br>
		<a href="cookieResult.jsp">최종확인</a>
	
	</body>
</html>