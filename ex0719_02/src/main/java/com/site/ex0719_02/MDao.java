package com.site.ex0719_02;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class MDao {
	
	//선언
	public MDao(){}
		MDto mDto = new MDto();
		DataSource ds = null;
		Connection conn = null;
		PreparedStatement pstmt =null;
		ResultSet rs =null;
		
		
	//Connection 연결
	public Connection getConnection() throws Exception{
		Context context = new InitialContext();
		ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		return ds.getConnection();
	}
	//Connection연결e

	//로그인 확인(id,pw) 확인
	public MDto loginSelect(String userId, String userPw) {
		
		try {
			conn=getConnection();
			String sql="select * from member2 where id=? and pw=?";
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mDto.setId(rs.getString("id"));
				mDto.setPw(rs.getString("pw"));
				mDto.setName(rs.getString("name"));
				mDto.setNickname(rs.getString("nickname"));
				mDto.setGender(rs.getString("gender"));
				mDto.setTel(rs.getString("tel"));
				mDto.setAddress1(rs.getString("Address1"));
				mDto.setAddress2(rs.getString("Address2"));
				mDto.setHobby(rs.getString("hobby"));
			
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
		
		return mDto;
	}
}
