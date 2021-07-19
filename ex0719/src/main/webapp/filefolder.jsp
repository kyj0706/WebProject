<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드 테스트2</title>
	</head>
	<body>
		<form action="./filefolderOk" method="post" name="form" enctype="multipart/form-data">
		<label>순번</label>		
		<input type="text" id="bid" name="bid"><br>
		<label>글제목</label>		
		<input type="text" id="btitle" name="btitle"><br>
		<label>글내용</label>		
		<input type="text" id="bcontent" name="bcontent"><br>
		<label>작성자</label>		
		<input type="text" id="bname" name="bname"><br>
		<label>파일첨부</label>		
		<input type="file" id="file01" name="file01"><br>
		<input type="submit" value="업로드">
		
		
		</form>
		
	</body>
</html>