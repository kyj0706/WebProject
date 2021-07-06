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
		<h3>회원가입</h3>
		<form action="./formOk2.jsp" method="post" name="form">
		<label>아이디</label>
			<input type="text" id="id" name="id"><br>
		<label>패스워드</label>
			<input type="text" id="pw" name="pw"><br>
		<label>이름</label>	
			<input type="text" id="name" name="name"><br>
		
		<input type="submit" value="전송"><br>
		
		</form>
		
	</body>
</html>