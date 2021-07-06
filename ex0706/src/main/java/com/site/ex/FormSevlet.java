package com.site.ex;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/Fs")
public class FormSevlet extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		System.out.println("doAtcion");
		
		String id,pw1,Tnew,age,gender,marri,children,job,concerns="";
		String[] concern;
		
		id = request.getParameter("id");
		pw1 = request.getParameter("pw1");
		Tnew = request.getParameter("Tnew");
		age = request.getParameter("age");
		gender = request.getParameter("gender");
		marri = request.getParameter("marri");
		children = request.getParameter("children");
		job = request.getParameter("job");
		concern =request.getParameterValues("concern");
		
		for(int i=0; i<concern.length; i++){
			if(i==0){
				concerns = concern[i];
			}else{
				concerns=concerns+ ","+concern[i];
			}
		}
		
		
		
		PrintWriter writer = response.getWriter();
		writer.println("<html><head>");
		writer.println("<title></title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h3>아이디 :"+ id +"</h3>");
		writer.println("<h3>비밀번호 :"+ pw1 +"</h3>");
		writer.println("<h3>소식지여부 :"+ Tnew +"</h3>");
		writer.println("<h3>관심연령 :"+age+"</h3>");
		writer.println("<h3>성별 :"+gender+"</h3>");
		writer.println("<h3>결혼여부 :"+marri+"</h3>");
		writer.println("<h3>자녀여부 :"+children+"</h3>");
		writer.println("<h3>직업 :"+job+"</h3>");
		writer.println("<h3>주제 :"+concerns+"</h3>");
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
