<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>수정페이지</title>
	</head>
	<body>
	<%!
		String s_No, s_Name;
	
		int s_Kor,s_Eng,s_Math, total;
		double avg;
	%>
	<%
		request.setCharacterEncoding("utf-8");
		
		s_No = request.getParameter("s_No");
		s_Name = request.getParameter("s_Name");
		s_Kor = Integer.parseInt(request.getParameter("s_Kor"));
		s_Eng = Integer.parseInt(request.getParameter("s_Eng"));
		s_Math = Integer.parseInt(request.getParameter("s_Math"));
		total = s_Kor + s_Eng + s_Math;
		avg = total/3.0;
	
	%>
	
	
	<h3>학생성적 수정페이지 </h3>
	
	<form action="./result.jsp" method="post" id="stuFrom" name="stuFrom">
			<label for="s_No">학번</label>
			<input type="text" id="s_No" name="s_No" value="<%=s_No %>" readonly>
			<br>
			<label for="s_Name">이름</label>
			<input type="text" id="s_Name" name="s_Name" value="<%=s_Name %>">
			<br>
			<label for="s_Kor">국어</label>
			<input type="text" id="s_Kor" name="s_Kor" value="<%=s_Kor %>">
			<br>
			<label for="s_Eng">영어</label>
			<input type="text" id="s_Eng" name="s_Eng" value="<%=s_Eng %>">
			<br>
			<label for="s_Eath">수학</label>
			<input type="text" id="s_Math" name="s_Math" value="<%=s_Math %>">
			<br>
			<label for="total">합계</label>
			<input type="text" id="total" name="total" value="<%=total %>" readonly>
			<br>
			<label for="avg">평균</label>
			<input type="text" id="avg" name="avg" value="<%=avg %>" readonly>
			<br>
			<input type="button" onclick="stuCheck()" value="수정">
		
		</form>
	
	
	</body>
</html>