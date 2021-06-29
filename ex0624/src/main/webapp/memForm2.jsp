<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입2</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
			function formCK(){
				//alert("확인");
		
		/* 		if($("#u_id").val()==""){
					alert("아이디 입력");
					$("#u_id").focus();
					return false;
				}
				if($("#u_pw").val() !=$("#u_pw2").val()){
					alert("패스워드 틀림");
					$("#u_pw").val();
					$("#u_pw2").val();
					$("#u_pw").focus();
					return false;
				} */
			
				
				
				
				return document.mForm.submit();
				
			}
			
		
		
		</script>
			
	</head>
	<body>
		<!-- 아이디,패스워드,패스워드확인,이름,성별(라디오), 취미(체크박스) , 유입경로(셀렉트) -->
		<!-- 아이디 5자리 이상, 패스워드와 패스워드확인 비교 -->	
		<!-- memFormOK => 출력을해보세요 -->
		
		<%request.setCharacterEncoding("utf-8");
			String gender = request.getParameter("gender");
			String hobby = request.getParameter("hobby");
			
		%>
		<h2>회원가입2</h2>
		<form action="./memFormOK.jsp" method="post" name="mForm">
		<label for=u_id>아이디</label>
		<input type="text" id="u_id" name="u_id" value='<%=request.getParameter("u_id") %>' ><br>
		<label for=u_pw>패스워드</label>
		<input type="password" id="u_pw" name="u_pw" required="required" value='<%=request.getParameter("u_pw") %>'><br>
		<label for=u_pw2>패스워드 확인</label>
		<input type="text" id="u_pw2" name="u_pw2" ><br>
		<label for=u_name>이름</label>
		<input type="text" id="u_name" name="u_name" value='<%=request.getParameter("u_name")%>'><br>
		
		<label>성별</label><br>
		<label for="male">남자</label>
		<input type="radio" id="male" name="gender" value="남자" <%=(gender.contains("남자"))?"checked":"" %> >
		<label for="female">여자</label>
		<input type="radio" id="female" name="gender" value="여자" <%=(gender.contains("여자"))?"checked":"" %>>
		<br>
		
		<label>취미</label>
		<br>
		<label for="game">게임</label>
		<input type="checkbox" id="game" name="hobby" value="게임">
		<label for="cook">요리</label>
		<input type="checkbox" id="cook" name="hobby" value="요리">
		<label for="read">독서</label>
		<input type="checkbox" id="read" name="hobby" value="독서">
		<label for="swim">수영</label>
		<input type="checkbox" id="swim" name="hobby" value="수영">
		<br>
		
		<label for="Route">유입경로</label>
			<select name="Route">
				<option value="news">뉴스</option>
				<option value="SNS">SNS</option>
				<option value="AD">광고</option>
				<option value="tel">전화</option>
			</select>
		<br>
		
		<input type="button" onclick="formCK();" value="수정">
		<input type="reset" value="취소">
		
		
		</form>
	</body>
</html>