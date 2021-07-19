<%@page import="com.site.ex0719.MDao"%>
<%@page import="com.site.ex0719.MDto"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	//db와 연결되어 있는 부분이 DAO로 모두이동 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String nickName = request.getParameter("nickname");
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
	
	int resultNum = mDao.memberUpdate(mDto);
	
%>



<html>
	<head>
		<meta charset="UTF-8">
		<title>회원가입</title>
		<script type="text/javascript">
		
		if(<%=resultNum==1%>){
			alert("회원정보 수정이 완료 되었습니다.");
			location.href="./index.jsp";
		}else{
			alert("수정 안됨, 다시 입력해 주세요 ");
			//history.back(-1); //방법1
			location.href="./member.jsp";
		}
		
		</script>
	</head>
	<body>

	</body>
</html>