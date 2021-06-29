<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>쿠키설정</title>
	</head>
	<body>
	<%
		Cookie cookie = new Cookie("login_id","aaa");
		Cookie nickName = new Cookie("nick_name","kor");
		cookie.setMaxAge(60*60); // 60초 * 30분  = 30분 ????????
		nickName.setMaxAge(60*30);
		response.addCookie(cookie); //내 컴터에 저장한다 뭐 그런 ?
		response.addCookie(nickName);
	%>
	
	<a href="cookieGet.jsp">쿠기정보 읽기</a>
	
	</body>
</html>