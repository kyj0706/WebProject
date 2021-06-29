package com.site.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Ex0623")
public class Ex0623 extends HttpServlet {
       
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		System.out.println("doAtcion");
		
		
		String masterId =getServletContext().getInitParameter("masterId");
		String masterPw =getServletContext().getInitParameter("masterPw");
		
		
		String id = getInitParameter("id");
		String pw = getInitParameter("pw");
		String name = getInitParameter("name");
		
		response.setContentType("text/html;charset=utf-8");
		
		PrintWriter writer = response.getWriter();
		writer.println("<html><head>");
		writer.println("<title></title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3>masterId :"+ masterId +"</h3>");
		writer.println("<h3>masterPw :"+ masterPw +"</h3>");
		writer.println("<h3>id :"+ id +"</h3>");
		writer.println("<h3> pw :"+pw+"</h3>");
		writer.println("<h3> name :"+name+"</h3>");
		writer.println("</body></html>");
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("doGet");
		doAction(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("doPost");
		doAction(request, response);
		
		
	}
	

}
