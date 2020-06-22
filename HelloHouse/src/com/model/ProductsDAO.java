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

import oracle.net.aso.p;

public class ProductsDAO {

	private Connection conn;
	private PreparedStatement ps;
	private ResultSet rs;
	private CallableStatement cstmt;

	private static ProductsDAO dao;

	private ProductsDAO() {

	}

	public static ProductsDAO getDAO() {
		if (dao == null) {
			dao = new ProductsDAO();
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
	
	public ArrayList<ProductsDTO> selectAll(ProductsDTO dto) {
		ArrayList<ProductsDTO> all = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all;
	}

	public ArrayList<ProductsDTO> selectAll_modern(ProductsDTO dto) {
		ArrayList<ProductsDTO> all_modern = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where img_link like '%modern%' order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all_modern.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all_modern;

	}
	
	public ArrayList<ProductsDTO> selectAll_classic(ProductsDTO dto) {
		ArrayList<ProductsDTO> all_classic = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where img_link like '%classic%' order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all_classic.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all_classic;

	}
	
	public ArrayList<ProductsDTO> selectAll_romantic(ProductsDTO dto) {
		ArrayList<ProductsDTO> all_romantic = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where img_link like '%romantic%' order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all_romantic.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all_romantic;

	}
	
	public ArrayList<ProductsDTO> selectAll_casual(ProductsDTO dto) {
		ArrayList<ProductsDTO> all_casual = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where img_link like '%casual%' order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all_casual.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all_casual;

	}
	
	public ArrayList<ProductsDTO> selectAll_natural(ProductsDTO dto) {
		ArrayList<ProductsDTO> all_natural = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where img_link like '%natural%' order by pro_price";

		try {
			ps = conn.prepareStatement(sql);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				all_natural.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return all_natural;

	}

	public ArrayList<ProductsDTO> select(ProductsDTO dto) {
		ArrayList<ProductsDTO> lists = new ArrayList<ProductsDTO>();
		dto = null;
		getConnection();

		String sql = "select *from products where img_link like ?";

		try {
			ps = conn.prepareStatement(sql);

			ps.setString(1, "%" + dto.getImg_link() + "%");
			rs = ps.executeQuery();

			while (rs.next()) {
				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);
				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				lists.add(dto);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();

		}
		return lists;
	}

	public ProductsDTO selectItem(int getInt) {
		ProductsDTO dto = null;
		getConnection();
		String sql = "select * from products where pro_id = ?";
		
		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, getInt);
			
			rs = ps.executeQuery();
			
			if(rs.next()) {
				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);
				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
			}
		} catch (SQLException e) {
		} finally {
			close();
		}
		return dto;
	}
	
	public ArrayList<ProductsDTO> resultItem(int getNum) {
		ArrayList<ProductsDTO> resultItems = new ArrayList<ProductsDTO>();
		ProductsDTO dto = null;
		getConnection();

		String sql = "select pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link from products where pro_style = ? order by pro_price";

		try {
			ps = conn.prepareStatement(sql);
			
			ps.setInt(1, getNum);

			rs = ps.executeQuery();

			while (rs.next()) {

				int pro_id = rs.getInt(1);
				String pro_name = rs.getString(2);
				int pro_price = rs.getInt(3);
				int pro_kind = rs.getInt(4);
				int pro_style = rs.getInt(5);
				String pro_coments = rs.getString(6);
				String img_link = rs.getString(7);

				dto = new ProductsDTO(pro_id, pro_name, pro_price, pro_kind, pro_style, pro_coments, img_link);
				resultItems.add(dto);

			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return resultItems;
	}

	
	


	
}
