package com.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frontController.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

public class JoinCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("EUC-KR");
		String moveURL = null;

		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		String mem_name = request.getParameter("mem_name");
		int mem_age = Integer.parseInt(request.getParameter("mem_age"));
		String mem_add = request.getParameter("mem_add");
		String mem_tel = request.getParameter("mem_tel");
		String mem_gender = request.getParameter("mem_gender");
		int mem_style = Integer.parseInt(request.getParameter("mem_style"));
		String mem_grade = request.getParameter("mem_grade");
		MemberDTO dto = new MemberDTO(mem_id, mem_pw, mem_name,mem_age, mem_add, mem_tel, mem_gender, mem_style, mem_grade);
		MemberDAO dao = MemberDAO.getDAO();
		dao.join(dto);
		
		moveURL = "main.jsp";
		
		return moveURL;
	}

}
