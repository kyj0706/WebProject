<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>결과값</title>
		<style type="text/css">
			table,td {border: 1px solid black; border-collapse: collapse; }
		</style>
		
	</head>
	<body>
	 <%
	request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="Person" class="ex0630.salary" scope="page"></jsp:useBean>
	<jsp:setProperty property="*" name="Person"/>
	<!-- 
	
	 **공제액은 월급의 10%이다.
	 
	1. memberForm.jsp 만들기 => 번호,이름,아이디,전화번호,성별,월급,공제액
	2. salary.java 만들기 => 번호, 이름, 아이디, 전화번호, 성별, 월급, 공제액
	3. j0630_04.jsp 만들기 => 폼에서 넘오온 데이터를 useBean 값을 삽입
	4. useBean 데이터를 테이블에 출력하시오.
	 -->
	 <table>
	 	<tr>
	 		<td>번호</td>
	 		<td><%=Person.getNo() %></td>
	 	</tr>
	 	<tr>
	 		<td>이름</td>
	 		<td><%=Person.getName() %></td>
	 	</tr>
	 	<tr>
	 		<td>아이디</td>
	 		<td><%=Person.getId() %></td>
	 	</tr>
	 	<tr>
	 		<td>전화번호</td>
	 		<td><%=Person.getTel() %></td>
	 	</tr>
	 	<tr>
	 		<td>성별</td>
	 		<td><%=Person.getGender() %></td>
	 	</tr>
	 	<tr>
	 		<td>월급</td>
	 		<td><%=Person.getSalary() %></td>
	 	</tr>
	 	<tr>
	 		<td>공제액</td>
	 		<td><%=Person.getTax() %></td>
	 	</tr>
	 
	 </table>
	
	</body>
</html>