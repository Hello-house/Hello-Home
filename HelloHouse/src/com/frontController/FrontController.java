package com.frontController;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.command.JoinCommand;
import com.command.LoginCommand;
import com.command.LogoutCommand;
import com.command.ProductsCommand;
import com.command.ProductsListCommand;
import com.command.DeleteBasketsCommand;
import com.command.ResearchCommand;
import com.command.UpdateCommand;


/**
 * Servlet implementation class FronController
 */
@WebServlet("*.do")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
private HashMap<String, ICommand> map = new HashMap<String, ICommand>(); //Ű�� string ���� ICommand ����� �ҷ����°�
	
	public void inputMap() {//map�̶�� ������ ����
		map.put("JoinService.do", new JoinCommand());
		map.put("LoginService.do", new LoginCommand());
		map.put("LogoutService.do", new LogoutCommand());
		map.put("UpdateService.do", new UpdateCommand());
		map.put("ProductsService.do", new ProductsCommand());
		map.put("ProductsList.do", new ProductsListCommand());
		map.put("DeleteBasketsSerivce.do", new DeleteBasketsCommand());
		map.put("ResearchService.do", new ResearchCommand());
//		map.put("InsertMessageService.do", new InsertMessageCommand());
//		map.put("DeleteAllMessageService.do", new DeleteAllMessageCommand());
//		map.put("DeleteMessageService.do", new DeleteMessageCommand());
		
	}

	/**
	 * @see HttpServlet#service(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		String contextPath = request.getContextPath();
		String resultURL = requestURI.substring(contextPath.length()+1);
		request.setCharacterEncoding("EUC-KR");
		
		inputMap();
		
		String moveURL = null; 
		ICommand iCommand = map.get(resultURL);
		moveURL = iCommand.execute(request, response);
		response.sendRedirect(moveURL);
		
//		String moveURL = null;
//		ICommand iCommand = null;
//		
//		if(resultURL.equals("LoginService.do")) {
//			iCommand = new LoginCommand();
//		}
//		moveURL = iCommand.execute(request, response);
//		response.sendRedirect(moveURL);
	}

}
