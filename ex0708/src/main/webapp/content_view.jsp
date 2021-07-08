<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>뷰페이지</title>
  <link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:400,500,700,900&display=swap&subset=korean" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css">
  <link rel="stylesheet" href="css/style.css">
  <link rel="stylesheet" href="css/read.css">
  <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
  <script type="text/javascript"></script>
  
</head>
<body>
<%
	request.setCharacterEncoding("utf-8");
	String bname,btitle,bcontent;
	
	bname = request.getParameter("bname");
	btitle = request.getParameter("btitle");
	bcontent = request.getParameter("bcontent");
	
	//날짜
	Date toDate = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
	String bdate = sdf.format(System.currentTimeMillis());
	
%>

<form action="./modify_view.jsp" method="post" name="modify_ok" id="modify_ok">
	<input type="hidden" name="bname" value="<%=bname%>">
	<input type="hidden" name="btitle" value="<%=btitle%>">
	<input type="hidden" name="bcontent" value="<%=bcontent%>">

</form>
<form action="./list.jsp" method="post" name="list_ok" id="list_ok">
	<input type="hidden" name="bname" value="<%=bname%>">
	<input type="hidden" name="btitle" value="<%=btitle%>">
	<input type="hidden" name="bcontent" value="<%=bcontent%>">
	<input type="hidden" name="bdate" value="<%=bdate%>">

</form>


<section>
    <h1>NOTICE</h1>

    <table>
      <colgroup>
        <col width="80%">
        <col width="10%">
        <col width="10%">
        
        
      </colgroup>
      <tr>
        <th colspan="2">제목</th>
       	<th>날짜 :<%=bdate %></th>
      </tr>
      <tr>
        <td colspan="3"><strong><%=btitle %></strong></td>
      </tr>
      <tr>
        <td><%=bname %></td>
        <td>조회수</td>
        <td>111</td>
      </tr>
      <tr>
        <td colspan="3" class="article"><%=bcontent %></td>
      </tr>
      <tr>
        <td colspan="3"><strong>다음글</strong> <span class="separator">|</span> [키즈잼] 2월 프로그램 안내</td>
      </tr>
      <tr>
        <td colspan="3"><strong>이전글</strong> <span class="separator">|</span> [키즈잼] 2020년 1분기 정기 휴관일 안내</td>
      </tr>
    </table>

    <a href="#"><div onclick='document.getElementById("list_ok").submit();' class="list">목록</div></a>
    <a href=""><div class="list">삭제</div></a>
    <a href="#"><div onclick='document.getElementById("modify_ok").submit();' class="list">수정</div></a>
    <a href=""><div class="list">답변달기</div></a>
  </section>
</body>
</html>