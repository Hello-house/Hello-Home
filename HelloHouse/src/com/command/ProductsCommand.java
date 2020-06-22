package com.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.frontController.ICommand;
import com.google.gson.Gson;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.model.ProductsDAO;
import com.model.ProductsDTO;

public class ProductsCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		Gson gson = new Gson();
		
		String moveURL = null;
//		ProductsDTO dto = new ProductsDTO();
//		ProductsDAO dao = ProductsDAO.getDAO();
		
		
		/*
		 * ArrayList<ProductsDTO> all = dao.selectAll(dto); HttpSession session =
		 * request.getSession(); session.setAttribute("goods", all);
		 * System.out.println("products 성공");
		 * 
		 * System.out.println(gson.toJson(all)); System.out.println("products 성공");
		 */
		
		
		
		moveURL = "products.jsp";
		return moveURL;
	}


}
