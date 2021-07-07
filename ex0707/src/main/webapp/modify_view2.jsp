<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>게시판 수정</title>
   </head>
   <body>
   <%
	request.setCharacterEncoding("utf-8");
	String bid,btitle,bcontent,bname,bhit,bdate,bip,n_wirte,category;
	
	bid = request.getParameter("bid");
	btitle = request.getParameter("btitle");
	bcontent = request.getParameter("bcontent");
	bname = request.getParameter("bname");
	bdate = request.getParameter("bdate");
	bhit = request.getParameter("bhit");
	bip = request.getParameter("bip");
	n_wirte = request.getParameter("n_wirte");
	category = request.getParameter("categorys");
	
   %>
   
		<h3>게시판 수정</h3>
	<form action="./content_view2.jsp">
		<label>번호</label>
			<input type="text" name="bid" id="bid" value="<%=bid%>"><br>
		<label>제목</label>
			<input type="text" name="btitle" id="btitle" value="<%=btitle%>"><br>
		<label>내용</label>
			<input type="text" name="bcontent" id="bcontent" value="<%=bcontent%>"><br>
		<label>작성자</label>
			<input type="text" name="bname" id="bname" value="<%=bname %>" ><br>
		<label>작성일</label>
			<input type="date" name="bdate" id="bdate" value="<%=bdate %>" ><br>
		<label>조회수</label>
			<input type="text" name="bhit" id="bhit" value="<%=bhit %>" ><br>
		<label>ip</label>
			<input type="text" name="bip" id="bip" value="<%=request.getRemoteAddr() %>" readonly><br>
		<label>공지글등록</label><br>
			<input type="radio" id="n_yes" name="n_wirte" value="n_yes" 
			<%=(n_wirte.equals("n_yes")? "checked":"") %>
			>공지글등록<br>
			<input type="radio" id="n_no" name="n_wirte" value="n_no"
			<%=(n_wirte.equals("n_no")? "checked":"") %>
			>공지글취소<br>
			
		<label>글카테고리</label><br>
			<input type="checkbox" id="screen" name="category" value="screen"
			<%=(category.contains("screen")? "checked":"") %>
			>영화<br>
			<input type="checkbox" id="trian" name="category" value="trian"
			<%=(category.contains("trian")? "checked":"") %>
			>운동<br>
			<input type="checkbox" id="music" name="category" value="music"
			<%=(category.contains("music")? "checked":"") %>
			>음악<br>
			<input type="checkbox" id="etc" name="category" value="etc"
			<%=(category.contains("etc")? "checked":"") %>
			>기타<br>
		<br>
			<input type="submit" value="저장">
			<input type="reset" value="취소">
         
      </form>
   </body>
</html>