<%@page import="com.model.ProductsDTO"%>
<%@page import="sun.swing.BakedArrayList"%>
<%@page import="com.model.BasketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BasketDAO"%>
<%@page import="com.model.MemberDAO"%>
<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>장바구니 목록</title>
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8");
	%>

	<%
		BasketDAO dao = new BasketDAO();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		ProductsDTO goodsItem = (ProductsDTO) session.getAttribute("goodsItem");
		String mem_id = info.getMem_id();
		int pro_id = goodsItem.getPro_id();
		String am = request.getParameter("amounts");
		int amounts = Integer.parseInt(am);

		dao.insert_baskets(mem_id, pro_id, amounts);
	%>

	<%
		ArrayList<BasketDTO> baskets = dao.basket_select(mem_id);

		System.out.print(baskets.size());
	%>
	<form action="deleteBaskets.jsp">
		<input type="submit" value="삭제"> <br> <br>

		<%
			for (int i = 0; i < baskets.size(); i++) {
		%>


		<input type="checkbox" value=<%=baskets.get(i).getPro_id()%> name="pro_id">



		<%
			out.print("<p>" + mem_id + "</p>");
				out.print("<p>" + baskets.get(i).getPro_id()+ "</p>");
				out.print("<p>" + baskets.get(i).getPro_name() + "</p>");
				out.print("<p>" + baskets.get(i).getPro_price() + "</p>");
				System.out.print(baskets.get(i).getImg_link());
				out.print("<p><img src = assets/img/products_img/" + baskets.get(i).getImg_link() + "></p>");
				out.print("<p>" + baskets.get(i).getAmount() + "</p>");
			}
		%>

	</form>
 




</body>
</html>