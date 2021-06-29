
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>게시판 확인</title>
		<style type="text/css">
		 table,td,th{border: 1px solid black; border-collapse: collapse; }
		</style>
		
		<%!
			String List_No,List_Name,List_Contents,List_User;
		
			SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
			Date today = new Date();
			String rdate = sdf.format(today);
		
			int count = 0;
			
		%>
		<%
		request.setCharacterEncoding("utf-8");
		
		List_No = request.getParameter("List_No");
		List_Name = request.getParameter("List_Name");
		List_Contents = request.getParameter("List_Contents");
		List_User = request.getParameter("List_User");
		
		count = count + 1;
	
		%>
	</head>
	
	<!-- noticeView.jsp => 게시판번호,제목,내용,작성자,작성일,조회수 -->
	<body>
	
	<h3>게시판 확인</h3>
		<table>
			<tr>
				<th>No</th>
				<th><%=List_No %></th>
			</tr>
			<tr>
				<td>제목</td>
				<td><%=List_Name %></td>
			</tr>
			<tr>
				<td>내용</td>
				<td><%=List_Contents %></td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><%=List_User %></td>
			</tr>
			<tr>
				<td>작성일</td>
				<td><%=rdate %></td>
			</tr>
			<tr>
				<td>조회수</td>
				<td><%=count %></td>
			</tr>
				
		
		</table>
		
		<form action="./noticeModify.jsp">
		<input type="hidden" name="List_No" value='<%=List_No %>'>
		<input type="hidden" name="List_Name" value='<%=List_Name %>'>
		<input type="hidden" name="List_Contents" value='<%=List_Contents %>'>
		<input type="hidden" name="List_User" value='<%=List_User %>'>
		<input type="hidden" name="rdate" value='<%=rdate %>'>
		<input type="hidden" name="count" value='<%=count %>'>
		<input type="submit" value="수정">
	
		
		
		
		
		</form>
		
		
	
	
	</body>
</html>