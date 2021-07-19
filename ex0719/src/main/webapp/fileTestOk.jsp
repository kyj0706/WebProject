<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일화기인</title>
	</head>
	<body>
	
	<%
	
	//실질적으로 tomcat의 upload위치를 말함.
		String path =request.getRealPath("upload");
		//직접 넣을수도 있따 .
		//String path = "c:/aaa";
		int size = 10 * 1024* 1024; // 10 *1024kb * 1024b	
	
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		String btitle = multi.getParameter("btitle");
		String bname = multi.getParameter("bname");		
		//파일이름 찾기 
		String fileName = multi.getFilesystemName("file1");
		//request.getParameter("bname");
	%>
	<h3>파일업로드 정보</h3>
	<table>
		<tr>
			<th>글제목</th>	
			<th><%=btitle %></th>	
		</tr>
	
		<tr>
			<th>작성자</th>	
			<th><%=bname %></th>	
		</tr>
	
		<tr>
			<th>파일명</th>	
			<th><%=fileName %></th>	
		</tr>
	
		<tr>
			<th>이미지</th>	
			<th><img src="./upload/<%=fileName %>"></th>	
		</tr>
	
	</table>
	
	</body>
</html>