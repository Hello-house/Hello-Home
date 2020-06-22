package com.command;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.frontController.ICommand;
import com.model.ProductsDAO;
import com.model.ProductsDTO;

public class ProductsListCommand implements ICommand {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response)
			throws UnsupportedEncodingException, ServletException, IOException {
		
		ProductsDAO dao = ProductsDAO.getDAO();
		
		String moveURL = null;
		int getInt = Integer.parseInt(request.getParameter("id"));
		System.out.println(getInt);
		
		
		  ProductsDTO goodsItem = dao.selectItem(getInt); 
		  if (goodsItem != null) {
		  HttpSession session = request.getSession(); 
		  session.setAttribute("goodsItem", goodsItem); 
		  System.out.println("productsItem ¼º°ø"); 
		  }
		 
		
		moveURL = "productsList.jsp?id=" + getInt;
		return moveURL;
	}

}
