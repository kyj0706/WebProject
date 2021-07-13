<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style type="text/css">
		 table,th,td {border:1px solid black;  }
		</style>
	</head>
	<body>
		<table>
			<tr>
				<td>사원번호</td>
				<td>사원이름</td>
				<td>부서번호</td>
				<td>부서이름</td>
			</tr>
			<%
				for(int i=0; i<10; i++){
			%>
			<tr>
				<td>101</td>
				<td>홍길동</td>
				<td>10</td>
				<td>총무기획수</td>
			</tr>

			
			<% 
			
				}
			
			%>		
			
			
		
		
		
		</table>
	
	</body>
</html>