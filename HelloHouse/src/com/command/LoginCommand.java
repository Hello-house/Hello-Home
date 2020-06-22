package com.command;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontController.ICommand;
import com.model.MemberDAO;
import com.model.MemberDTO;

import jdk.nashorn.internal.ir.RuntimeNode.Request;

public class LoginCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) throws UnsupportedEncodingException {
		request.setCharacterEncoding("EUC-KR");
		String moveURL = null;
		String mem_id = request.getParameter("mem_id");
		String mem_pw = request.getParameter("mem_pw");
		System.out.println(mem_id);
		System.out.println(mem_pw);
		
		MemberDTO dto = new MemberDTO(mem_id, mem_pw);
		MemberDAO dao = MemberDAO.getDAO();
		MemberDTO info = dao.login(dto);
		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			System.out.println("¼º°ø");
		}
		moveURL = "main.jsp";
		return moveURL;
	}

}
