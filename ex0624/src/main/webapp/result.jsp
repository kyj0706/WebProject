<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정보확인1</title>
		<style type="text/css">
		 table,td{border: 1px solid black; border-collapse: collapse; }	
		</style>
		<%!
			String s_No,s_Name,s_Kor,s_Eng,s_Math,avg;
			int total;
		%>
		<%
		request.setCharacterEncoding("utf-8");
		
			s_No = request.getParameter("s_No");
			s_Name = request.getParameter("s_Name");
			s_Kor = request.getParameter("s_Kor");
			s_Eng = request.getParameter("s_Eng");
			s_Math = request.getParameter("s_Math");
			total = Integer.parseInt(s_Kor)+ Integer.parseInt(s_Eng)+ Integer.parseInt(s_Math);
			avg = String.format("%.2f",total/3.0);
		%>
		
		
	
	
	</head>
	<body>
	<h3>학생성적 확인</h3>
		<table>
			<tr>
				<td>학번</td>
				<td><%=s_No %></td>
			</tr>
			<tr>
				<td>이름</td>
				<td><%=s_Name %></td>
			</tr>
			<tr>
				<td>국어</td>
				<td><%=s_Kor %></td>
			</tr>
			<tr>
				<td>영어</td>
				<td><%=s_Eng %></td>
			</tr>
			<tr>
				<td>수학</td>
				<td><%=s_Math %></td>
			</tr>
			<tr>
				<td>합계</td>
				<td><%=total %></td>
			</tr>
			<tr>
				<td>평균</td>
				<td><%=avg %></td>
			</tr>
		
		</table>
		
		<form action="./modify.jsp">
			<input type="hidden" name="s_No" value='<%=s_No %>'>
			<input type="hidden" name="s_Name" value='<%=s_Name %>'>
			<input type="hidden" name="s_Kor" value='<%=s_Kor %>'>
			<input type="hidden" name="s_Eng" value='<%=s_Eng %>'>
			<input type="hidden" name="s_Math" value='<%=s_Math %>'>
			<input type="hidden" name="total" value='<%=total %>'>
			<input type="hidden" name="avg" value='<%=avg %>'>
			<input type="submit" value="수정">
		
		
		
		</form>
	
	</body>
</html>