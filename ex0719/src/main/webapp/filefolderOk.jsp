<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>파일업로드 확인2</title>
	</head>
	<body>
	<%
		String path = request.getRealPath("upload");
		int size = 10 *1024* 1024;
		
		MultipartRequest multi = new MultipartRequest(request,path,size,"utf-8",new DefaultFileRenamePolicy());
		String bid = multi.getParameter("bid");	
		String btitle = multi.getParameter("btitle");	
		String bcontent = multi.getParameter("bcontent");	
		String fileName = multi.getParameter("file01");	
	%>
		<h3>파일업로드 정보2</h3>
		<table>
		
		
		
		</table>
	
	
	
	</body>
</html>