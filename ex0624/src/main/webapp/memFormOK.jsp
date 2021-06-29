<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입2</title>
	</head>
	<body>
		<%
		request.setCharacterEncoding("utf-8");
		String u_id = request.getParameter("u_id");
		out.println("아이디 :"+u_id+"<br>");
		out.println("패스워드 :"+request.getParameter("u_pw")+"<br>");
		out.println("이름 :"+request.getParameter("u_name")+"<br>");
		out.println("성별 :"+request.getParameter("gender")+"<br>");
		
		String[] hobby = request.getParameterValues("hobby");
		String hobbys="";
		for (int i=0; i<hobby.length; i++){
			if(i==0){
				hobbys = hobbys + hobby[i];
			}else{
				hobbys = hobbys+","+ hobby[i];
			}
		}
		out.println("취미" + hobbys+"<br>");
		out.println("유입경로" + request.getParameter("Route"));
		
		
		
		%>

		<form action="./memForm2.jsp" method="post" name="memForm">
			<input type="hidden" name="u_id" value='<%= request.getParameter("u_id") %>'> 
			<input type="hidden" name="u_pw" value='<%= request.getParameter("u_pw") %>'> 
			<input type="hidden" name="u_name" value='<%= request.getParameter("u_name") %>'> 
			<input type="hidden" name="gender" value='<%= request.getParameter("gender") %>'> 
			<input type="hidden" name="hobby" value='<%= request.getParameter("gender") %>'> 
			<input type="submit" value="수정">
		</form>

	
	</body>
</html>