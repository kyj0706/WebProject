<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<title>매안패아자</title>
	</head>
	<body>
	<h3>메인페이지</h3>
		
		<%if(session.getAttribute("session_flag")==null){%>
		
		<ul>
			<li><a href="./login.jsp">로그인</a></li>
			<li><a href="./member.jsp">회원가입</a></li>
		</ul>
		<%}else{%>
		
		<h3><%=session.getAttribute("session_nickName") %>누구님 안녕하세요</h3>
		<ul>
			<li><a href="./logout.jsp">로그아웃</a></li>
			<li><a href="./modi.jsp">정보수정</a></li>
		</ul>
		<%} %>
	
	</body>
</html>