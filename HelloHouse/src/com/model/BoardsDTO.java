package com.model;

	public class BoardsDTO {
	
	int board_num;
	String  board_title;
	String mem_id;
	int pro_id;
	String  content;
	String img_link;
	String boa_date;
	
	
	public BoardsDTO(int board_num, String board_title, String mem_id, int pro_id, String content, String img_link,
			String boa_date) {
		this.board_num = board_num;
		this.board_title = board_title;
		this.mem_id = mem_id;
		this.pro_id = pro_id;
		this.content = content;
		this.img_link = img_link;
		this.boa_date = boa_date;
	}
	
	public BoardsDTO() {
		
	}


	public int getBoard_num() {
		return board_num;
	}


	public void setBoard_num(int board_num) {
		this.board_num = board_num;
	}


	public String getBoard_title() {
		return board_title;
	}


	public void setBoard_title(String board_title) {
		this.board_title = board_title;
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


	public String getContent() {
		return content;
	}


	public void setContent(String content) {
		this.content = content;
	}


	public String getImg_link() {
		return img_link;
	}


	public void setImg_link(String img_link) {
		this.img_link = img_link;
	}


	public String getBoa_date() {
		return boa_date;
	}


	public void setBoa_date(String boa_date) {
		this.boa_date = boa_date;
	}
	
	
	
	
	

}
