<%@page import="com.model.ProductsDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BasketDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	 <%
		request.setCharacterEncoding("UTF-8");
		BasketDAO dao = new BasketDAO();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		ProductsDTO goodsItem = (ProductsDTO) session.getAttribute("goodsItem");
		String mem_id = info.getMem_id();
		int pro_id = goodsItem.getPro_id();
		String am = request.getParameter("amounts");
		int amounts = Integer.parseInt(am);

		dao.insert_baskets(mem_id, pro_id, amounts);
		
		response.sendRedirect("productsList.jsp?id=" + pro_id);
	%> 





</body>
</html>