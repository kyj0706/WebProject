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
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회</th>
		</tr>


		<%
		for (int i = 0; i <= 10; i++) {
		%>
		<tr>
			<%
			for (int j = 1; j <= 4; j++) {
			%>
			<td>
				<%
				out.println(j + i * 4);
				%>
			</td>
			<%
			}
			%>
		</tr>
		<%
		}
		%>


		<!-- 			<tr>
				<td>1</td>
				<td>2</td>
				<td>3</td>
				<td>4</td>
			</tr>
			<tr>
				<td>5</td>
				<td>6</td>
				<td>7</td>
				<td>8</td>
			</tr>
			<tr>
				<td>9</td>
				<td>10</td>
				<td>11</td>
				<td>12</td>
			</tr> -->

	</table>

</body>
</html>