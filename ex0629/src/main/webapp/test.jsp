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
			String id = "aaa";
			String pw = "1234";
			if(id.equals("aaa") && pw.equals("1234")){
				//html코드를 삽입 하고 싶음
				//이렇게 끊어줘야 한다.
		%>
			<script type="text/javascript">
				alert("html을 넣기위해서 스크립트릿을 분리해줘야한다.");
			</script>
		
		
		
				
		<%
			}else{
		%>
			<script type="text/javascript">
				alert("이렇게 또 분래 해야한다.")
			</script>
		
		
		
		<%		
			}
		%>
	
	</body>
</html>