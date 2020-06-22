package com.model;

public class BasketDTO {
	
	private String img_link;
	private String mem_id;
	private int pro_id;
	private String pro_name;
	private int amount;
	private int pro_price;
	
	public BasketDTO(int pro_price, int amount) {
		this.pro_price = pro_price;
		this.amount = amount;
	}
	
	
	public BasketDTO(String img_link, String pro_name, int amount, int pro_price, int pro_id) {
		this.img_link = img_link;
		this.pro_name = pro_name;
		this.amount = amount;
		this.pro_price = pro_price;
		this.pro_id = pro_id;
	}
	public BasketDTO(String mem_id, int pro_id, int amount) {
		super();
		this.mem_id = mem_id;
		this.pro_id = pro_id;
		this.amount = amount;
	}
	public String getImg_link() {
		return img_link;
	}
	public void setImg_link(String img_link) {
		this.img_link = img_link;
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
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public int getPro_id() {
		return pro_id;
	}
	public void setPro_id(int pro_id) {
		this.pro_id = pro_id;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	

}
