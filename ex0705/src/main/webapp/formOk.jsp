<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
	<head>
		<meta charset="UTF-8">
		<title>formOk</title>
	</head>
	<body>
		<%
			request.setCharacterEncoding("utf-8");
			String name, pw, tel,gender,add1,add2,rink ,hobbys="";
			String[] hobby;
			name =request.getParameter("name");
			pw =request.getParameter("pw");
			tel =request.getParameter("tel");
			gender =request.getParameter("gender");
			add1 =request.getParameter("add1");
			add2 =request.getParameter("add2");
			hobby =request.getParameterValues("hobby");
			rink =request.getParameter("rink");
		
			for(int i=0; i<hobby.length; i++){
				if(i==0){
					hobbys = hobby[i];
				}else{
					hobbys= hobbys + ","+hobby[i];
				}
			}
		%>
	
	
		<table>
			<tr>
				<td>이름</td>
				<td><%=name %></td>
			</tr>
			<tr>
				<td>패스워드</td>
				<td><%=pw %></td>
			</tr>
			<tr>
				<td>전화번호</td>
				<td><%=tel %></td>
			</tr>
			<tr>
				<td>성별</td>
				<td><%=gender %></td>
			</tr>
			<tr>
				<td>주소</td>
				<td><%=add1 %><%=add2 %></td>
			</tr>
			<tr>
				<td>취미</td>
				<td><%=hobbys %></td>
			</tr>
			<tr>
				<td>유입경로</td>
				<td><%=rink %></td>
			</tr>
	
	
	
		</table>
	
	</body>
</html>