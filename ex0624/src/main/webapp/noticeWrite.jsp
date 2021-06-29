<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function LCheck() {
				alert("확인");
			
			
				return $("#ListForm").submit();
			} 
		
		
		
		</script>
	</head>
	<body>
		<!-- noticeWrite.jsp => 게시판번호,제목,내용,작성자 -->
		<!-- noticeView.jsp => 게시판번호,제목,내용,작성자,작성일,조회수 -->
		<!-- noticeModify.jap => 게시판번호(readonly),제목,내용,작성자,작성일,조회수  -->
	
	<h3>게시판 입력</h3>
		<form action="./noticeView.jsp" method="post" id="ListForm" name="ListForm">
			<label for="List_No">게시판 번호</label>
			<input type="text" id="List_No" name="List_No">
			<br>
			<label for="List_Name">제목</label>
			<input type="text" id="List_Name" name="List_Name">
			<br>
			<label for="List_Contents">내용</label>
			<input type="text" id="List_Contents" name="List_Contents">
			<br>
			<label for="List_User">작성자</label>
			<input type="text" id="List_User" name="List_User">
			<br>
			<input type="button" onclick="LCheck()" value="전송">
			<input type="reset" value="취소">
		
		
		
		
		</form>
	
	
	
	
	</body>
	
	
	
</html>