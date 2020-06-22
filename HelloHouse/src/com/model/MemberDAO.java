package com.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	
	private static MemberDAO dao;
	private MemberDAO() {
		
	}
	public static MemberDAO getDAO() {
		if (dao == null) {
			dao = new MemberDAO();
		}
		return dao;
	}
	private void getConnection() {
		
		try {
			InputStream in = this.getClass().getResourceAsStream("db.properties");
			Properties p = new Properties();
			p.load(in);
			
			Class.forName(p.getProperty("driver"));
			String db_url = p.getProperty("db_url");
			String db_id = p.getProperty("db_id");
			String db_pw = p.getProperty("db_pw");
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			System.out.println("연결성공");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}
	private void close() {
		try {
			if (rs != null)
				rs.close();
			if (psmt != null)
				psmt.close();
			if (conn != null)
				conn.close();
		} catch (SQLException e) {

			e.printStackTrace();
		}

	}
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		getConnection();
		String sql = "select mem_id, mem_name, mem_age, mem_add, mem_tel, mem_gender, mem_style, mem_grade from members where mem_id =? and mem_pw = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				String mem_id = rs.getString(1);
				String mem_name = rs.getString(2);
				int mem_age = rs.getInt(3);
				String mem_add = rs.getString(4);
				String mem_tel = rs.getString(5);
				String mem_gender = rs.getString(6);
				int mem_style = rs.getInt(7);
				String mem_grade = rs.getString(8);
				info = new MemberDTO(mem_id, mem_name, mem_age, mem_add, mem_tel, mem_gender, mem_style, mem_grade);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			close();
		}
		
		return info;
	}
	public void join(MemberDTO dto) {
		try {
			getConnection();
			String sql = "insert into members values(?,?,?,?,?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_id());
			psmt.setString(2, dto.getMem_pw());
			psmt.setString(3, dto.getMem_name());
			psmt.setInt(4, dto.getMem_age());
			psmt.setString(5, dto.getMem_add());
			psmt.setString(6, dto.getMem_tel());
			psmt.setString(7, dto.getMem_gender());
			System.out.println(dto.getMem_gender());
			psmt.setInt(8, dto.getMem_style());
			
			psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
	}
	public int update(MemberDTO dto) {
		int result = 0;
		getConnection();
		String sql = "update members set mem_pw = ?, mem_name = ?, mem_age=?, mem_add = ?, mem_tel = ?, mem_gender=?, mem_style=?  where mem_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMem_pw());
			psmt.setString(2, dto.getMem_name());
			psmt.setInt(3, dto.getMem_age());
			psmt.setString(4, dto.getMem_add());
			psmt.setString(5, dto.getMem_tel());
			psmt.setString(6, dto.getMem_gender());
			psmt.setInt(7, dto.getMem_style());
			psmt.setString(9, dto.getMem_id());
			
			result = psmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		
				
		return result;
	}


}
