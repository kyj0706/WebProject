<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>db연결</title>
	</head>
	<body>
	<%
	//트라이 캐치문에 넣어줘야한다 
	//프린터할때 , 파일생성할때 
			Connection conn =null;
			Statement stmt =null;
			ResultSet rs = null;
	
	try{
			//db연결
			//고정 복붙해라 
			//메모리에 jdbc탑재 객체를 생성해준다 . 외워라 .
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			//String url = "jdbc:oracle:thin@localhost:1521:xe";
			//커넥션실행 접속 (url id pw)
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			//sql구문을 입력하는창 생성  //쿼리 창을 열꺼다 라는 명령어 
			stmt = conn.createStatement();
			//sql구문 입력 
			String sql = "select * from employees";
			 rs = stmt.executeQuery(sql);
			//데이터 107개가 들어간다 rs에 
			while(rs.next()){
				int employee_id= rs.getInt("employee_id");
				String emp_name = rs.getString("emp_name");
				String emmail = rs.getString("email");
				Timestamp date = rs.getTimestamp("hire_date");
				
				out.println("사원번호: "+employee_id+","+"이름: "+emp_name+","+"입사일 : "+date+"<br>");
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			if(rs!=null) rs.close();
			if(stmt!=null) stmt.close();
			if(conn!=null) conn.close();
			
		}
		
	
		
		
		
	%>
	</body>
</html>