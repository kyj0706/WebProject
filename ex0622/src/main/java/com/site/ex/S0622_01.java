package com.site.ex;

import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/S01")
public class S0622_01 extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		System.out.println("Servlet 페이지 접속됨.");
		
		response.setContentType("text/html;charset=utf-8");
		
		//이녀석은 화면에 쓰는것 
		PrintWriter pw = response.getWriter();
		
		pw.println("<html>");
		pw.println("<head>");
		pw.println("<>");
		pw.println("<>");
		pw.println("<>");
		pw.println("<>");
		pw.println("<>");
		
	
		
		
		//이녀석은 파일에 쓰는것 
		//FileWriter fw = new FileWriter(file1,true);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
