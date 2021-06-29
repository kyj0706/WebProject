<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
		<%
			//섹션가지고 오기
			String session_flag = (String) session.getAttribute("session_flag");
			if(session_flag != null){
			//로그인 성공시
				if(session_flag.equals("success")){
					%>			
					<a href="./logout.jsp"><img src="../images/login.JPG"></a>
					<%
			
				}
			}else{%>
				<a href="./login.jsp"><img src="../images/logout.JPG"></a>
			<%}%>

	</body>
</html>