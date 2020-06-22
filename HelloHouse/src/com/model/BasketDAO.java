package com.model;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

public class BasketDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;
	private CallableStatement cstmt;
	
	private void getConnection() {

		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
			System.out.println("연결완료");
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
			if (psmt != null) {
				psmt.close();
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

	public void basket_insert(BasketDTO dto) {
		getConnection();
		String sql = "insert into baskets values(?,?,?)";

		try {
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, dto.getMem_id());
			psmt.setInt(2, dto.getPro_id());
			psmt.setInt(3, dto.getAmount());
			
			
			psmt.executeUpdate();
			

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

	}

	public ArrayList<BasketDTO> basket_select(String mem_id) {
		   BasketDTO basket = null;
		   ArrayList<BasketDTO> baskets = new ArrayList<BasketDTO>();
		   getConnection();
		   String sql = "select p.img_link, p.pro_name, b.amount, p.pro_price, b.pro_id from baskets b, products p where b.pro_id = p.pro_id and mem_id = ?";
		   
		   try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setString(1, mem_id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				String img_link = rs.getString(1);
				String pro_name = rs.getString(2);
				int amount = rs.getInt(3);
				int pro_price = rs.getInt(4);
				int pro_id = rs.getInt(5);
				
				
				basket = new BasketDTO(img_link, pro_name, amount, pro_price, pro_id);
				baskets.add(basket);
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		   return baskets;
	   }
	
	public int insert_baskets(String mem_id, int pro_id, int amounts) {
		getConnection();
		String sql = "insert into baskets values (?, ?, ?)";
		
		try {
			psmt = conn.prepareCall(sql);
			
			psmt.setString(1, mem_id);
			psmt.setInt(2, pro_id);
			psmt.setInt(3, amounts);
			
			psmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return pro_id;
	}
	
	public void delete(int pro_id) {
		getConnection();
		String sql = "delete baskets where pro_id = ?";
		try {
			psmt = conn.prepareStatement(sql);
			
			psmt.setInt(1, pro_id);
			
			psmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
	}
	
	public ArrayList<BasketDTO> select_price(int pro_id) {
		getConnection();
		BasketDTO dto = null;
		ArrayList<BasketDTO> dto2 = new ArrayList<BasketDTO>();
		String  sql = "select p.pro_price, b.amount from baskets b, products p where b.pro_id = p.pro_id and p.pro_id=?";
		System.out.print(" sql check");
		try {
			psmt = conn.prepareStatement(sql);
			System.out.print("check");
			psmt.setInt(1, pro_id);
			
			rs = psmt.executeQuery();
			
			while(rs.next()) {
				int pro_price = rs.getInt(1);
				int amount = rs.getInt(2);
				
				dto=new BasketDTO(pro_price, amount);
				dto2.add(dto);
				System.out.print("dto2" + dto2);
				
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return  dto2;
	}
}
