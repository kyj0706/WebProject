package com.site.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
			//index   http://localhost:8181/ex0622/index.jap
@WebServlet("/S02") //http://localhost:8181/ex0622/S02
public class S0622_02 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 System.out.println("Setvlet 2 페이지 접속됨");
	 
	 response.setContentType("text/html;charset=utf-8");
	 
	 PrintWriter pw = response.getWriter();
	 pw.println("<html>");
	 pw.println("<head>");
	 pw.println("<title>서블릿페이지</title>");
	 pw.println("</head>");
	 pw.println("<body>");
	 pw.println("<h2>서블릿에서 페이지를 오픈합니다.</h2>");
	 pw.println("<p><a href='movie/movie.jsp'>다음페이지 이동</a></p>");
	 pw.println("</body>");
	 pw.println("</html>");
	 pw.close();
		
	
	 
	 
	 
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

}