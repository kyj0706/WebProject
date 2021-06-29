<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style type="text/css">
table, td, th {
	border: 1px solid black;
	border-collapse: collapse;
	text-align: center;
}
</style>
</head>
<body>
	<%
	String[] name = { "홍길동", "이순신", "유관순", "강감찬", "김구" };
	int[] stuNo = { 1, 2, 3, 4, 5 };
	int[][] score = { { 100, 100, 100, 300 }, { 100, 100, 100, 300 }, { 100, 100, 100, 300 }, { 100, 100, 100, 300 },
			{ 100, 100, 100, 300 } };
	double[] avg = { 100.0, 100.0, 100.0, 100.0, 100.0 };
	%>

	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>합계</td>
			<td>평균</td>
		</tr>
		<%
		for (int i = 0; i < name.length; i++) {

			/* 	for(int j=0; j<name.length; j++){
			out.println(j);
				} */
		%>

		
			<td>
				<%
				out.print(stuNo[i]);
				%>
			</td>
			<td>
				<%
				out.print(name[i]);
				%>
			</td>
			<%
			for (int j = 0; j < 4; j++) {
			%>
			<td>
				<%
				out.print(score[i][j]);
				%>
			</td>
			<%
			}
			%>
			<td>
				<%
				out.print(avg[i]);
				%>
			</td>

		<tr><% out.println();%></tr>
		<%
		}
		%>



	<!-- 	<tr>
			<td>1</td>
			<td>홍길동</td>
			<td>100</td>
			<td>100</td>
			<td>100</td>
			<td>300</td>
			<td>100.0</td>
		</tr> -->



	</table>


</body>
</html>