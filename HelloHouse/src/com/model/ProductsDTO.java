package com.model;

public class ProductsDTO {
	private int pro_id;
	private String pro_name;
	private int pro_price;
	private int pro_kind;
	private int pro_style;
	private String pro_coments;
	private String img_link;
	
	
	
	public ProductsDTO() {
		
	}
	
	
	
	public ProductsDTO(int pro_id, String pro_name, int pro_price, int pro_kind, int pro_style,
			String pro_coments, String img_link) {
		this.pro_id = pro_id;
		this.pro_name = pro_name;
		this.pro_price = pro_price;
		this.pro_kind = pro_kind;
		this.pro_style = pro_style;
		this.pro_coments = pro_coments;
		this.img_link = img_link;
	}
		
	public ProductsDTO(String img_link) {
		this.img_link = img_link;
	}
		


	public int getPro_id() {
		return pro_id;
	}


	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}


	public String getPro_name() {
		return pro_name;
	}


	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}


	public int getPro_price() {
		return pro_price;
	}


	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}


	public int getPro_kind() {
		return pro_kind;
	}


	public void setPro_kind(int pro_kind) {
		this.pro_kind = pro_kind;
	}


	public int getPro_style() {
		return pro_style;
	}


	public void setPro_style(int pro_style) {
		this.pro_style = pro_style;
	}


	public String getPro_coments() {
		return pro_coments;
	}


	public void setPro_coments(String pro_coments) {
		this.pro_coments = pro_coments;
	}


	public String getImg_link() {
		return img_link;
	}


	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}
	
	
	
}
