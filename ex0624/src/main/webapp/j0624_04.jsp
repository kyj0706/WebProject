<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
			<meta charset="UTF-8">
			<title>학생정보</title>
			<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
			<script type="text/javascript">
				function stuCheck() {
					if($("#s_Name").val()==""){
						alert('이름은 필수입니다');
						$("#s_Nmae").focus();
						return false;
					}
					return $("#stuFrom").submit();
				}
			
			</script>
			
	</head>
	<body>
		<!-- j0624_04.jsp => 학번,이름,국어,영어,수학 -->
		<!-- result.jsp => 학번,이름,국어,영어,수학,합계,평균 -->
		<!-- modify.jap => 학번,이름,국어,영어,수학,합계,평균  -->
		
		
		<h2>학생성적 입력페이지</h2>
		<form action="./result.jsp" method="post" id="stuFrom" name="stuFrom">
			<label for="s_NO">학번</label>
			<input type="text" id="s_No" name="s_No">
			<br>
			<label for="s_Name">이름</label>
			<input type="text" id="s_Name" name="s_Name">
			<br>
			<label for="s_Kor">국어</label>
			<input type="text" id="s_Kor" name="s_Kor">
			<br>
			<label for="s_Eng">영어</label>
			<input type="text" id="s_Eng" name="s_Eng">
			<br>
			<label for="s_Eath">수학</label>
			<input type="text" id="s_Math" name="s_Math">
			<br>
			<input type="button" onclick="stuCheck()" value="result로 전송">
			<input type="reset" value="취소">		
		
		</form>
		
	</body>
</html>