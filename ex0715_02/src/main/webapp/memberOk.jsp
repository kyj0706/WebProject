<%@page import="com.site.ex0715_02.MDto"%>
<%@page import="com.site.ex0715_02.MDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//db와 연결되어 있는 부분이 DAO로 모두이동 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nickName = request.getParameter("nickName");
	String gender = request.getParameter("gender");
	String tel = request.getParameter("tel");
	String address1 = request.getParameter("address1");
	String address2 = request.getParameter("address2");
	String[] hobby = request.getParameterValues("hobby");
	
	String hobbys="";
	
	
	for(int i=0; i<hobby.length; i++){
		if(i==0) hobbys += hobby[i];
		else hobbys += ","+hobby[i];
	}
	MDto mDto = new MDto(id,pw,name,nickName,gender,tel,address1,address2,hobbys);
	MDao mDao = new MDao();
	
	int resultNum = mDao.memberInsert(mDto);
	
%>



<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script type="text/javascript">
		if(<%=resultNum==1%>){
			alert("회원가입완료");
			location.href="./index.jsp";
		}else{
			alert("회원가입 안됨, 다시 입력해 주세요 ");
			//history.back(-1); //방법1
			location.href="./member.jsp";
		}
		
		</script>
	</head>
	<body>
	
	</body>
</html>