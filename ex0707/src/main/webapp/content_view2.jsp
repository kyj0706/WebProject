<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="UTF-8">
      <title>Insert title here</title>
      
         <style type="text/css">
         table,th,td { border: 1px solid black; border-collapse: collapse;}
      </style>
      
   </head>
   <body>
   <%
   		request.setCharacterEncoding("utf-8");
		String bid,btitle,bcontent,bname,bhit,bdate,bip,n_wirte,categorys="";
		String[] category;
		bid = request.getParameter("bid");
		btitle = request.getParameter("btitle");
		bcontent = request.getParameter("bcontent");
		bname = request.getParameter("bname");
		bdate = request.getParameter("bdate");
		bhit = request.getParameter("bhit");
		bip = request.getParameter("bip");
		n_wirte = request.getParameter("n_wirte");
		category = request.getParameterValues("category");
   	
		for(int i=0; i<category.length; i++){
			if(i==0){
				categorys = category[i];
			}else{
				categorys=categorys + "," + category[i];
			}
		}
   
   
   %>
   
      <h3>게시판 view</h3>
      <table>
         <tr>
            <td>번호</td>
            <td><%=bid %></td>
         </tr>
         <tr>
            <td>제목</td>
            <td><%=btitle %></td>
         </tr>
         <tr>
            <td>내용</td>
            <td><%=bcontent %></td>
         </tr>
         <tr>
            <td>작성자</td>
            <td><%=bname %></td>
         </tr>
         <tr>
            <td>작성일</td>
            <td><%=bdate %></td>
         </tr>
         <tr>
            <td>조회수</td>
            <td><%=bhit %></td>
         </tr>
         <tr>
            <td>ip</td>
            <td><%=bip %></td>
         </tr>
         <tr>
            <td>공지글등록</td>
            <td><%=n_wirte %></td>
         </tr>
         <tr>
            <td>글카테고리</td>
            <td><%=categorys %></td>
         </tr>
         
      </table>
      <form action="./modify_view2.jsp">
		<input type="hidden" name="bid" value="<%=bid%>">	
		<input type="hidden" name="btitle" value="<%=btitle%>">	
		<input type="hidden" name="bcontent" value="<%=bcontent%>">	
		<input type="hidden" name="bname" value="<%=bname%>">	
		<input type="hidden" name="bdate" value="<%=bdate%>">	
		<input type="hidden" name="bhit" value="<%=bhit%>">	
		<input type="hidden" name="bip" value="<%=bip%>">	
		<input type="hidden" name="n_wirte" value="<%=n_wirte%>">	
		<input type="hidden" name="categorys" value="<%=categorys%>">	
      <button type="submit" > 수정 </button>
      </form>
      
      
      
      
   </body>
</html>