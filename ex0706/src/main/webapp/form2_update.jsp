<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Form2</title>
		<style type="text/css">
			table,td,tr {border:1px solid black; border-collapse: collapse;}

		</style>
		
		
	</head>
	<body>
	 <%
	 	request.setCharacterEncoding("utf-8");
	 	String id =request.getParameter("id");
	 	String pw =request.getParameter("pw");
	 	String name =request.getParameter("name");
	 	
	 %>
		
	<h3>회원가입 수정</h3>
		<form action="./formOk2.jsp" method="post" name="form">
		<label>아이디</label>
			<input type="text" id="id" name="id" value="<%=id%>"><br>
		<label>패스워드</label>
			<input type="text" id="pw" name="pw" value="<%=pw%>"><br>
		<label>이름</label>	
			<input type="text" id="name" name="name" value="<%=name%>"><br>
		
		<input type="submit" value="저장"><br>
		
		</form>
		
	</body>
</html>