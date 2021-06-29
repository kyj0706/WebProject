<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>index</title>
	</head>
	<body>
		<ul>
		<%
		Cookie[] cookieAll = request.getCookies();
		int count=0;
		 		 
		if(cookieAll != null){
		 	for(int i=0; i<cookieAll.length; i++){
		 		
		 		//닉네임 검색후 닉네임 출력
				if(cookieAll[i].getName().equals("cookie_nName")){
					out.println("<h3>"+cookieAll[i].getValue()+"님 환영합니다.</h>");	
				}
		 		//아이디 검색후 아이디 출력
				if(cookieAll[i].getName().equals("login_id")){
					out.println("<h3>아이디 :"+cookieAll[i].getValue()+"님 환영합니다.</h>");	
				}
				
				String cName = cookieAll[i].getName();
				String cValue = cookieAll[i].getValue();
				
				//로그인성공
				if(cookieAll[i].getValue().equals("suceess") && cookieAll[i].getName().equals("cookie_flag")){
				
					count=1;	
				%>
					<img src="../images/login.JPG">
					<li><a href="./logout.jsp">로그아웃</a></li>
					<li>게시판</li>
					<li>이벤트</li>
					
				<%
				}//if
		 	}//for
		}//if
		
		if(count==0){//로그인 안된 상태
			 	%>
	 				<!-- <li>회원가입</li> -->
	 				<h>[로그인 가능합니다.]</h>
	 				<img src="../images/logout.JPG"><br>
 					<li><a href="./login.jsp">로그인</a></li>		
		
		
		
		<% 
		}
		%>


		
			<!-- 로그인 전 -->
			<!-- localhost:8181/ex0629/login.index.jsp -->
			
			<li><a href="./index.jsp">index</a></li>	
		</ul>
	
	</body>
</html>