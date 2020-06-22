package com.command;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontController.ICommand;
import com.model.ProductsDAO;
import com.model.ProductsDTO;

public class ResearchCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		int getNum = 0;
		String moveURL = null;
		String getString = request.getParameter("id");
		
		if(getString.equals("modern")) {
			getNum = 1;
		}
		if(getString.equals("classic")) {
			getNum = 2;
		}
		if(getString.equals("romantic")) {
			getNum = 3;
		}
		if(getString.equals("natural")) {
			getNum = 4;
		}
		if(getString.equals("casual")) {
			getNum = 5;
		}
		System.out.println(getNum);
		

		  moveURL = "result.jsp?id=" + getNum;
		  return moveURL;
	}

}

