<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드</title>
	</head>
	<body>
		<form action="./fileTestOk.jsp" method="post" name="from" enctype="multipart/form"> 
			<label>글제목</label>
			<input type="text" id="btitle" name="btitle"><br>
			<label>작성자</label>
			<input type="text" id="bname" name="bname"><br>
			<label>파일첨부</label>
			<input type="file" id="file1" name="file1"><br>
			<input type="submit" value="파일업로드">
		
		
		
		</form>
		
	
	</body>
</html>