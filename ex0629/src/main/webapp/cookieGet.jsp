<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	<%
		Cookie[] cookieAll = request.getCookies();//쿠기 모든것 가지고와
		for(int i=0; i<cookieAll.length; i++){
			String cookieName = cookieAll[i].getName(); //key값가지고옴 
			String cookieValue = cookieAll[i].getValue();
			
			out.println("쿠키 :" +cookieName+",");
			out.println(cookieValue+"<br>");
			
			if(cookieAll[i].getValue().equals("success")){
				out.println("로그인 되었습니다.");
			}
		}	
		
		//삭제
		for(int i=0; i<cookieAll.length; i++){
			 //cookieAll이 0이 되면 쿠키모두삭제해라 의미다
			 //여기서는 cookieAll[i].setMaxAge(0);
			if(cookieAll[i].getName().equals("cookie_flag")){
				cookieAll[i].setMaxAge(0);//쿠기 1개 삭제 ????
				response.addCookie(cookieAll[i]);//최종 쿠기 
			}
		}
		
	%>
	
	<a href="cookieDel.jsp">쿠키삭제 확인</a>
	
	
	</body>
</html>