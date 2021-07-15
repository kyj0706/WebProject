<%@page import="com.site.ex0715_03.MDao"%>
<%@page import="com.site.ex0715_03.MDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MDao mDao = new MDao();
	MDto mDto = mDao.loginSelect(id, pw);

	String checkId = mDto.getId();
%>

<html>
	<head>
		<meta charset="UTF-8">
		<title>loginOk</title>
	</head>
	<body>
		<script type="text/javascript">
		if(<%=mDto.getId()==null%>){
			alert("아이디와 패스워드가 일치하지 않습니다.");
			location.href="./login.jsp";
		}else{
			alert("로그인에 성공하셧습니다.");
			<%
				session.setAttribute("session_id", mDto.getId());
				session.setAttribute("session_nickName", mDto.getNickName());
				session.setAttribute("session_flag", "success");
			%>
			location.href="./index.jsp";
		}
		
		
		
		</script>
	
	</body>
</html>