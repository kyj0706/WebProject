<%@page import="com.site.ex0719_02.MDto"%>
<%@page import="com.site.ex0719_02.MDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//sql문 이동 ??? 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	MDao mDao = new MDao();
	MDto mDto = mDao.loginSelect(id, pw);
	//???
	String checkId = mDto.getId();

%>


<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인확인</title>
		<script type="text/javascript">
	
		if(<%=mDto.getId()==null%>)		
			alert("아이디와 패스워드가 틀렸음");
			location.href="./login.jsp";
		}else{
			alert("로그인 한다.");
			<%
				session.setAttribute("session_id", mDto.getId());
				session.setAttribute("session_nickname", mDto.getNickname());
				session.setAttribute("session_flag", "success");
			%>
			location.href="./index.jsp";
		}
		
		
		
		</script>
		
	</head>
	<body>
	
	</body>
</html>