package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/Join02Ok")

public class Join02Ok extends HttpServlet {
	
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Connection conn=null;
		Statement stmt=null;

		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		System.out.println("doAction");
		
		String id =request.getParameter("id");
		String pw1 =request.getParameter("pw1");
		String mail_id = request.getParameter("mail_id");
		String mail_tail = request.getParameter("mail_tail");
		String zipcode  = request.getParameter("zipcode ");
		String f_postal = request.getParameter("f_postal");
		String l_postal = request.getParameter("l_postal");
		String f_tell =request.getParameter("f_tell");
		String m_tell = request.getParameter("m_tell");
		String l_tell = request.getParameter("l_tell");
		String birth_year = request.getParameter("birth_year");
		String birth_month = request.getParameter("birth_month");
		String birth_day = request.getParameter("birth_day");
		String gender = request.getParameter("gender");
		String newletter = request.getParameter("newletter");
		String sms = request.getParameter("sms");
		String job = request.getParameter("job");
		String marital_status = request.getParameter("marital_status");
		String[] hobby = request.getParameterValues("hobby");
		
		String hobbys="";
		for(int i=0; i<hobby.length; i++) {
			if(i==0) {
				hobbys=hobby[i];
			}else {
				hobbys=hobbys+","+hobby[i];
			}
		}
		
		
		try {
			
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","ora_user","1234");
			stmt = conn.createStatement();	
			String sql = "";
			
			/*
			 * String sql = "insert into member2 values(" +
			 * "'"+id+"','"+pw+"','"+name+"','"+nickname+"'," + "'"+gender+"','"+tel+"'," +
			 * "'"+address1+"','"+address2+"','"+hobbys+"'" + ")";
			 */
			
			
			int i = stmt.executeUpdate(sql); 
			//insert,update,delete 할때는 execute
			//select 할때는  ececuteQuery
			if(i==1) {
				System.out.println("데이터 저장 성공");
				response.sendRedirect("./join03_success.jsp");
			}else {
				System.out.println("데이터 저장 실패");
				response.sendRedirect("./main.jsp");
			}
			
			
			
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(stmt!=null) stmt.close();
				if(conn!=null) conn.close();
			}catch(Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
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
