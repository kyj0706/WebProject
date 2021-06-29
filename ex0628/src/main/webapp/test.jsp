<%@page import="java.net.URLEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>정보</title>
	</head>
	<body>
	<%
	request.setCharacterEncoding("utf-8");
	int no = Integer.parseInt(request.getParameter("no"));
	int score = Integer.parseInt(request.getParameter("score"));
	String name = request.getParameter("name");	
	
	if(score>=60){
		
	%>
		<!-- 액션태그 -->
		<!--   -->
		<jsp:forward page="test_sucess.jsp" >
			<jsp:param value="<%=no %>" name="no"/>
			<jsp:param value="<%=name %>" name="name"/>
			<jsp:param value="<%=score %>" name="score"/>
			<jsp:param value="성공" name="param_test"/>
		</jsp:forward>
		
	<%
	//파라미터 방식
	//response.sendRedirect("test_sucess.jsp?no="+no+"&name="+name+"&score="+score);
	}else {
		//response.sendRedirect("test_sucess.jsp?no="+no+"&name="+name+"&score="+score);
	}
	
	
	%>
	
	</body>
</html>