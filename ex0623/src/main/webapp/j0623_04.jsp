<%@page import="com.site.ex.Student"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
				<style type="text/css">
				table, td, th {
					border: 1px solid black;
					border-collapse: collapse;
					text-align: center;
				}
				</style>
		</head>
	<body>
	<%
		ArrayList<Student> list = new ArrayList<Student>();
		list.add(new Student(1,"홍길동",100,100,100));
		list.add(new Student(2,"이순신",90,100,99));
		list.add(new Student(3,"유관순",100,80,100));
		list.add(new Student(4,"강감찬",70,100,90));
		list.add(new Student(5,"김구",100,100,100));
	%>
	<table>
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>국어</td>
			<td>영어</td>
			<td>수학</td>
			<td>합계</td>
			<td>평균</td>
		</tr>
	
	<%
		for(int i=0; i<list.size(); i++){
			
	%>
		
		<tr>
			<td><%=list.get(i).getStuNo() %></td> <!-- 표현식 값을 출력할때 쓴다.-->
			<td><%=list.get(i).getName() %></td> <!-- 표현식 -->
			<td><%=list.get(i).getKor() %></td> <!-- 표현식 -->
			<td><%out.println(list.get(i).getEng()); %></td> <!-- 스크립트릿 -->
			<td><%out.println(list.get(i).getMath()); %></td> <!-- 스크립트릿 -->
			<td><%out.println(list.get(i).getTotal()); %></td> <!-- 스크립트릿 -->
			<td><%out.println(list.get(i).getAvg()); %></td> <!-- 스크립트릿 -->
		
		</tr>
		
			
	<%
		}
	%>
	
	
	
	
	
	</table>
	
	
	</body>
</html>