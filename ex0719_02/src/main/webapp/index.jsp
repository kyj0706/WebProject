<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>메인페이지</title>
	</head>
	<body>
		<h3>메인페이지</h3>
		<ul>
		<%if(session.getAttribute("session_flag")==null){ %>
		
			<li><a href="./login.jsp">로그인</a></li>
			<li><a href="">회원가입</a></li>
		</ul>
		<%}else{ %>
		<h1><%=session.getAttribute("session_nickname") %>님 안녕?</h1>
		<ul>
			<li><a href="./logout.jsp">로그아웃</a></li>
			<li><a href="">게시판</a></li>
			<li><a href="">회원정보수정</a></li>
			<li><a href="./memberList.jsp">회원리스트</a></li>
		</ul>
		<%} %>
	</body>
</html>