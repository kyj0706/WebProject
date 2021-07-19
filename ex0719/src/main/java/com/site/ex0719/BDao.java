package com.site.ex0719;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class BDao {

	DataSource ds = null;
	Connection conn =null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	
	public Connection getConnection() throws Exception {
		//Context객체 생성
		Context context = new InitialContext();
		//context 에 있는 jdbc/Oracle11g라는 이름을 가진 DataSource를 가지고 오세요 
		ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		//50중에 Connection 1개가지고와!!
		return ds.getConnection();
		
	}
	//게시판 전체 리스트 메소드
	public ArrayList<BDto> boardList(){
		ArrayList<BDto> list = new ArrayList<BDto>();
		
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="select * from board";
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
			 
			
				BDto bDto =new BDto();
				bDto.setBid(rs.getInt("BID"));
				bDto.setBtitle(rs.getString("BTITLE"));
				bDto.setBcontent(rs.getString("BCONTENT"));
				bDto.setBname(rs.getString("BNAME"));
				bDto.setBgroup(rs.getInt("BGROUP"));
				bDto.setBstep(rs.getInt("BSTEP"));
				bDto.setBinent(rs.getInt("BINDENT"));
				bDto.setBDate(rs.getTimestamp("BDATE"));
				bDto.setBupload(rs.getString("BUPLOAD"));	
				bDto.setBhit(rs.getInt("BHIT"));	
				list.add(bDto);
			}
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return list;
	}
	
}
