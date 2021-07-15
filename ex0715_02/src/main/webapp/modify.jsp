<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>회원정보수정</title>
		<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
		<script type="text/javascript">
		if(<%=session.getAttribute("session_id")%>==null ){
				alert("로그인을 하셔야합니다. 로그인 후 접속하세요");
				location.href="./login.jsp";				
			}
		
			function formCheck() {
				//script 형식
				/* 	document.getElementById("id").value */
				//jquery 형식
				//아이디에있는 값을 가지고와라
				if ($("#id").val().length<3){
					alert("아이디는 3자리 이상 입력하셔야 합니다.");
					$("#id").focus();
					return false;
				}
				$("#form").submit();
			}
		
		
       //jquery 형식
			/* $(function() {
				
			}); */
		
		
		</script>
	</head>
	<body>
	<%
		if(session.getAttribute("session_id")==null){
			
		}
		Connection conn= null;
		PreparedStatement pstmt=null;
		ResultSet rs = null;
		
		String id="",pw="",name="",nickname="",gender="",tel="",address1="",address2="",hobby="";
		
		id = (String)session.getAttribute("session_id");
		
		try{
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			String sql = "select * from member2 where id=?";
			pstmt = conn.prepareStatement(sql);	
			pstmt.setString(1, id);
			rs =pstmt.executeQuery();
			
			if(rs.next()){
				id = rs.getString("id");
				pw = rs.getString("pw");
				name = rs.getString("name");
				nickname = rs.getString("nickName");
				gender = rs.getString("gender");
				tel = rs.getString("tel");
				address1 = rs.getString("address1");
				address2 = rs.getString("address2");
				hobby = rs.getString("hobby");
			}
			
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			try{
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
				
			}catch(Exception e2){
				e2.printStackTrace();
			}
		}
	%>
	
	
	
	
      <h3>회원정보수정</h3>
      <form action="./ModifyOk" id="form" name="form">
         <label>아이디</label>
         <input type="text" id="id" name="id" placeholder="id는 5자리 이상" required value="<%=id%>"><br>
         <label>패스워드</label>
         <input type="password" id="pw" name="pw" placeholder="pw는 3자리 이상" required><br>
         <label>이름</label>
         <input type="text" id="name" name="name" value="<%=name%>"><br>
         <label>닉네임</label>
         <input type="text" id="nickname" name="nickname" value="<%=nickname%>"><br>
         <label>성별</label><br>
         <input type="radio" id="male" name="gender" value="male" <%=gender.equals("male")?"checked":"" %> ><label for="male">남성</label>
         <input type="radio" id="female" name="gender" value="female" <%=gender.equals("female")?"checked":"" %>><label for="female">여성</label><br>
           <label>전화번호</label>
         <input type="text" id="tel" name="tel" value="<%=tel%>"><br>
           <label>주소1</label>
         <input type="text" id="address1" name="address1" value="<%=address1%>"><br>
           <label>주소2</label>
         <input type="text" id="address2" name="address2" value="<%=address2%>"><br>
          <label>취미</label><br>
         <input type="checkbox" id="swim" name="hobby" value="swim" <%=hobby.contains("swim")?"checked":"" %>><label for="swim">수영</label>
         <input type="checkbox" id="golf" name="hobby" value="golf" <%=hobby.contains("golf")?"checked":"" %>><label for="golf">골프</label>
         <input type="checkbox" id="run" name="hobby" value="run" <%=hobby.contains("run")?"checked":"" %> ><label for="run">조깅</label>
         <input type="checkbox" id="read" name="hobby" value="read" <%=hobby.contains("read")?"checked":"" %>><label for="read">독서</label><br>
         <input type="button" onclick="formCheck()" value="수정완료">
         <a href="./index.jsp"><input type="button" value="취소"></a><br>
         </form>
         
	</body>
</html>