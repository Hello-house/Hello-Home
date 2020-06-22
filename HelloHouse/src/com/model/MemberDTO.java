package com.model;

public class MemberDTO {
	private String mem_id;
	private String mem_pw;
	private String mem_name;
	private int mem_age;
	private String mem_add;
	private String mem_tel;
	private String mem_gender;
	private int mem_style;
	private String mem_grade;
	
	public MemberDTO(String mem_id, String mem_pw, String mem_name, int mem_age, String mem_add, String mem_tel,
			String mem_gender, int mem_style, String mem_grade) {
		super();
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
		this.mem_name = mem_name;
		this.mem_age = mem_age;
		this.mem_add = mem_add;
		this.mem_tel = mem_tel;
		this.mem_gender = mem_gender;
		this.mem_style = mem_style;
		this.mem_grade = mem_grade;
	}

	public MemberDTO(String mem_id, String mem_pw) {
		this.mem_id = mem_id;
		this.mem_pw = mem_pw;
	}

	public MemberDTO(String mem_id, String mem_name, int mem_age, String mem_add, String mem_tel,
			String mem_gender, int mem_style, String mem_grade) {
		this.mem_id = mem_id;
		this.mem_name = mem_name;
		this.mem_age = mem_age;
		this.mem_add = mem_add;
		this.mem_tel = mem_tel;
		this.mem_gender = mem_gender;
		this.mem_style = mem_style;
		this.mem_grade = mem_grade;
	}

	public String getMem_id() {
		return mem_id;
	}

	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}

	public String getMem_pw() {
		return mem_pw;
	}

	public void setMem_pw(String mem_pw) {
		this.mem_pw = mem_pw;
	}

	public String getMem_name() {
		return mem_name;
	}

	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}

	public int getMem_age() {
		return mem_age;
	}

	public void setMem_age(int mem_age) {
		this.mem_age = mem_age;
	}

	public String getMem_add() {
		return mem_add;
	}

	public void setMem_add(String mem_add) {
		this.mem_add = mem_add;
	}

	public String getMem_tel() {
		return mem_tel;
	}

	public void setMem_tel(String mem_tel) {
		this.mem_tel = mem_tel;
	}

	public String getMem_gender() {
		return mem_gender;
	}

	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}

	public int getMem_style() {
		return mem_style;
	}

	public void setMem_style(int mem_style) {
		this.mem_style = mem_style;
	}

	public String getMem_grade() {
		return mem_grade;
	}

	public void setMem_grade(String mem_grade) {
		this.mem_grade = mem_grade;
	}
	
	
	
	
	
	
	

}
