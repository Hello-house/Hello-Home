<%@page import="com.model.BasketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ProductsDTO"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="com.model.BasketDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/main2.css">
    <link rel="stylesheet" href="assets/css/test.css">
    <link rel="stylesheet" href="assets/css/join.css">
    <link rel="stylesheet" href="assets/css/login.css">
    <link rel="stylesheet" href="assets/css/viewBaskets.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
<title>장바구니</title>
</head>
<body>

	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
		<section class="viewBaskets">
			<%
			BasketDAO dao = new BasketDAO();
			MemberDTO info = (MemberDTO) session.getAttribute("info");
			String mem_id = info.getMem_id();
			ArrayList<BasketDTO> baskets = dao.basket_select(mem_id);
	
			System.out.print(baskets.size());
			%>
			<div class="viewBaskets-list">
		        <div class="list-item-check">선택</div>
		        <div class="list-items-info">상품 정보</div>
		    </div>
			<form action="DeleteBasketsSerivce.do" id="formAction">
				
				<br><br>
				<%
					
					for (int i = 0; i < baskets.size(); i++) {
				%>
		
					
						<div class="baskets-items">
							<div class="baskets-checkbox"><input type="checkbox" value=<%=baskets.get(i).getPro_id() %> name="pro_id"></div>
						<%
							
							out.print("<div class=baskets-img><p id=item-img><img src = assets/img/products_img/" + baskets.get(i).getImg_link() + "></p></div>");
							%>
							<div class=baskets-info>
							<%
							out.print("<p id=item-name>" + baskets.get(i).getPro_name() + "</p>");
							System.out.print(baskets.get(i).getImg_link());
							out.print("<p id=item-amount>" + baskets.get(i).getAmount() + "개</p>");
							out.print("<p id=item-price>" + baskets.get(i).getPro_price()*baskets.get(i).getAmount() + "원</p></div>");
							%>
							</div>
							<%
							
						}
					%>
							<input type="submit" value="삭제" id="basketBtn">
							<input type="submit" value="구매" id="payBtn">
						</div>
					
				
				
		<!-- 	</form>
							<form action="purchase.jsp">
				<input type="submit" value="구매" id="payBtn">
			</form> -->
		
			
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
	<script src="assets/js/purchase.js"></script>








</body>
</html>