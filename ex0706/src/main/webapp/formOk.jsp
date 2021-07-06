<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>fromOK</title>
		<style type="text/css">
			table,tr,td {border: 1px solid black; border-collapse: collapse; }
		</style>
	</head>
	<body>
	<%
		request.setCharacterEncoding("utf-8");
		String id,pw1,Tnew,age,gender,marri,children,job,concerns="";
		String[] concern;	
		id = request.getParameter("id");
		pw1 = request.getParameter("pw1");
		Tnew = request.getParameter("Tnew");
		age = request.getParameter("age");
		gender = request.getParameter("gender");
		marri = request.getParameter("marri");
		children = request.getParameter("children");
		job = request.getParameter("job");
		concern =request.getParameterValues("concern");
		
		for(int i=0; i<concern.length; i++){
			if(i==0){
				concerns = concern[i];
			}else{
				concerns=concerns+ ","+concern[i];
			}
		}
		
	%>
		<table>
			<tr>
				<td>아이디</td>
				<td><%=id %></td>
			</tr>
			<tr>
				<td>비밀번호</td>
				<td><%=pw1 %></td>
			</tr>
			<tr>
				<td>소식지 수신여부</td>
				<td><%=Tnew %></td>
			</tr>
		</table>
	<br>
		<table>
			<tr>
				<td>관심연령</td>
				<td><%=age %></td>
				<td>성별</td>
				<td><%=gender %></td>
			</tr>
			<tr>
				<td>결혼여부</td>
				<td><%=marri %></td>
				<td>자녀여부</td>
				<td><%=children %></td>
			</tr>
			<tr>
				<td>직업</td>
				<td><%=job %></td>
			</tr>
		</table>
	<br>
		<table>
			<tr>
				<td>주제</td>
				<td><%=concerns %></td>
			</tr>
		</table>
		<form action="./form_update.jsp">
			<input type="hidden" name="id" value=<%=id%>>
			<input type="hidden" name="pw1" value=<%=pw1%>>
			<input type="hidden" name="Tnew" value=<%=Tnew%>>
			<input type="hidden" name="age" value=<%=age%>>
			<input type="hidden" name="gender" value=<%=gender%>>
			<input type="hidden" name="marri" value=<%=marri%>>
			<input type="hidden" name="children" value=<%=children%>>
			<input type="hidden" name="job" value=<%=job%>>
			<input type="hidden" name="concern" value=<%=concern%>>
			<input type="submit" value="수정">
		
		</form>
		
		
		<!--이렇게 하면 복잡하다 . -->
		<!-- <button type="button" onclick="location.href='./form_update.jsp'">수정</button> -->
	
	</body>
</html>