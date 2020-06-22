package com.command;

import java.io.IOException;
import java.io.UnsupportedEncodingException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.frontController.ICommand;
import com.model.BasketDAO;

public class DeleteBasketsCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, ServletException, IOException {
			String moveURL = null;
			String[] pid = request.getParameterValues("pro_id");
			BasketDAO dao = new BasketDAO();
	
			for(int i=0; i<pid.length; i++){
				System.out.print(pid[i]);
				int pro_id = Integer.parseInt(pid[i]);
				System.out.print(pro_id);
				dao.delete(pro_id);
	
				}
			moveURL ="viewBaskets.jsp";
		return moveURL;
	}

}
