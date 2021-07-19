package com.site.ex0719;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

//db연결 class ->이제 모든 DB연결은 여기서 합니다 ....
public class MDao {
	
	public MDao(){}
	ArrayList<MDto> list = new ArrayList<MDto>();
	MDto mDto =new MDto();
	DataSource ds = null;
	Connection conn =null;
	PreparedStatement pstmt =null;
	ResultSet rs =null;
	
	//Connection객체 db연결
	//연결하려면  DBurl,DBid,DBpw가 필요
	public Connection getConnection() throws Exception {
		//Context객체 생성
		Context context = new InitialContext();
		//context 에 있는 jdbc/Oracle11g라는 이름을 가진 DataSource를 가지고 오세요 
		ds = (DataSource) context.lookup("java:comp/env/jdbc/Oracle11g");
		//50중에 Connection 1개가지고와!!
		return ds.getConnection();
		
	}
	//회원1명 정보 수정메소드
	public int memberUpdate(MDto mDto ) {
		
		int resultNum=0;
		
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="update member2 set pw=?,name=?,nickname=?,gender=?,tel=?,address1=?,address2=?,hobby=? where id=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getPw());
			pstmt.setString(2, mDto.getName());
			pstmt.setString(3, mDto.getNickName());
			pstmt.setString(4, mDto.getGender());
			pstmt.setString(5, mDto.getTel());
			pstmt.setString(6, mDto.getAddress1());
			pstmt.setString(7, mDto.getAddress2());
			pstmt.setString(8, mDto.getHobby());
			pstmt.setString(9, mDto.getId());
			//성공1, 실패0
			resultNum = pstmt.executeUpdate();
			
			
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null) pstmt.close();
				if(conn!=null) pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		
		return resultNum;
	}
	//회원 2명이상 select메소드
	public ArrayList<MDto> memberSelect(){
		ArrayList<MDto> list = new ArrayList<MDto>();
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="select * from member2";
			pstmt=conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				MDto mDto =new MDto();
				mDto.setId(rs.getString("id"));
				mDto.setPw(rs.getString("pw"));
				mDto.setName(rs.getString("name"));
				mDto.setNickName(rs.getString("nickName"));
				mDto.setGender(rs.getString("gender"));
				mDto.setTel(rs.getString("tel"));
				mDto.setAddress1(rs.getString("address1"));
				mDto.setAddress2(rs.getString("address2"));
				mDto.setHobby(rs.getString("hobby"));	
				list.add(mDto);
			}
			
		}catch(Exception e){
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
	
	
	
	//회원 1명 select 메소드
	public MDto memberOneSelect(String userId) {
		MDto mDto= new MDto();
		
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="select * from member2 where id=? ";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mDto.setId(rs.getString("id"));
				mDto.setPw(rs.getString("pw"));
				mDto.setName(rs.getString("name"));
				mDto.setNickName(rs.getString("nickName"));
				mDto.setGender(rs.getString("gender"));
				mDto.setTel(rs.getString("tel"));
				mDto.setAddress1(rs.getString("address1"));
				mDto.setAddress2(rs.getString("address2"));
				mDto.setHobby(rs.getString("hobby"));	
			}
			
		}catch(Exception e){
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
	
	
	
	
	//회원가입 추가 메소드
	public int memberInsert(MDto mDto) {
		int resultNum=0;
		
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="insert into member2 values(?,?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, mDto.getId());
			pstmt.setString(2, mDto.getPw());
			pstmt.setString(3, mDto.getName());
			pstmt.setString(4, mDto.getNickName());
			pstmt.setString(5, mDto.getGender());
			pstmt.setString(6, mDto.getTel());
			pstmt.setString(7, mDto.getAddress1());
			pstmt.setString(8, mDto.getAddress2());
			pstmt.setString(9, mDto.getHobby());
			//성공1, 실패0
			resultNum = pstmt.executeUpdate();
	
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
		
		
		return resultNum;
	}//회원가입 추가
	
	
	
	//로그인 id,pw 체크
	public MDto loginSelect(String userId,String userPw) {
	
		try {
			conn = getConnection();//Connection메소드 호출
			String sql="select * from member2 where id=? and pw=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			pstmt.setString(2, userPw);
			rs = pstmt.executeQuery();
			
			if(rs.next()) {
				mDto.setId(rs.getString("id"));
				mDto.setPw(rs.getString("pw"));
				mDto.setName(rs.getString("name"));
				mDto.setNickName(rs.getString("nickName"));
				mDto.setGender(rs.getString("gender"));
				mDto.setTel(rs.getString("tel"));
				mDto.setAddress1(rs.getString("address1"));
				mDto.setAddress2(rs.getString("address2"));
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

}//login
