package com.model;

import java.io.IOException;
import java.io.InputStream;
import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Properties;

public class BoardsDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private CallableStatement cstmt;

	private static BoardsDAO dao;

	private BoardsDAO() {

	}

	public static BoardsDAO getDAO() {
		if (dao == null) {
			dao = new BoardsDAO();
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
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {

		try {
			if (rs != null) {
				rs.close();
			}
			if (ps != null) {
				ps.close();
			}
			if (conn != null) {
				conn.close();
			}
			if (cstmt != null) {
				cstmt.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

	}

	public ArrayList<BoardsDTO> selectAll(BoardsDTO dto) {
		ArrayList<BoardsDTO> all = new ArrayList<BoardsDTO>();
		dto = null;
		getConnection();

		String sql = "select * from boards order by boa_date desc";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int board_num = rs.getInt(1);
				String board_title = rs.getString(2);
				String mem_id = rs.getString(3);
				int pro_id = rs.getInt(4);
				String content = rs.getString(5);
				String img_link = rs.getString(6);
				String boa_date = rs.getString(7);

				dto = new BoardsDTO(board_num, board_title, mem_id, pro_id, content, img_link, boa_date);
				all.add(dto);

			}

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return all;

	}
	
	
		
		
		
	}


