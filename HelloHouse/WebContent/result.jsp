<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ProductsDAO"%>
<%@page import="com.model.ProductsDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>

<link rel="stylesheet" href="assets/css/main2.css">
<link rel="stylesheet" href="assets/css/test.css">
<link rel="stylesheet" href="assets/css/join.css">
<link rel="stylesheet" href="assets/css/login.css">
<link rel="stylesheet" href="assets/css/show.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>

	<%-- <%
 	ProductsDTO[] goods = (ProductsDTO)session.getAttribute("goods");
 %>
 <% if ( goods != null){ %>
 	<% for (int i=0; i< goods.length; i++) {%>
 	<%= goods.getPro_name() %>
 	<%} %>
 <% }%> --%>

	<%
		int getNum = Integer.parseInt(request.getParameter("id")); 
		ProductsDTO dto = new ProductsDTO();
		ProductsDAO dao = ProductsDAO.getDAO();
		ArrayList<ProductsDTO> resultItems = dao.resultItem(getNum);
		String style = null;
		
		if(getNum==1){
			style = "���";
		}
		if(getNum==2){
			style = "Ŭ����";
		}
		if(getNum==3){
			style = "�θ�ƽ";
		}
		if(getNum==4){
			style = "����";
		}
		if(getNum==5){
			style = "ĳ���";
		}
	%>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- <section class="container-ad">
			<div class="banner"></div>
		</section>
 -->
		<section class="container-goods" style="padding-top:170px">
			<div class="show-goods">
				<div class="show-goods-items" id = >
					<h1 class="goods-item-title" id = "logo-title">�ȳ��Ͽ콺</h1>
					<div class="goods-item-link">
						<div class="item-1" id = "item-style">
							<%=style %>
						</div>
						<div class="item-2"></div>
					</div>
				</div>
				<div class="show-goods-items img">
				<img src="assets/img/cjh3.png">
					<!-- <a href="">1</a>
					<a href="">2</a>
					<a href="">3</a>
					<a href="">4</a>
					<a href="">5</a> -->
				</div>
				<div class="show-goods-items img-list">
					<div class="img-list-items">
					<img src="assets/img/cjh2.png"></div>
					<div class="img-list-items"></div>
					<div class="img-list-items"></div>
					<div class="img-list-items"></div>
				</div>
			</div>
			<div class="goods-lists">



				<%
					for (int i = 0; i < resultItems.size(); i++) {
						System.out.println(resultItems.get(i).getPro_id());
				%>
				<a href="ProductsList.do?id=<%=resultItems.get(i).getPro_id()%>">
					<div class="goods-list-item">
						<div class="img">
							<%
								/* out.print("<img src = assets/img/products_img/" + resultItems.get(i).getImg_link() + " id = img1 style=background-image: url(" ") >"); */
								out.print("<img style=background-image:url(\"assets/img/products_img/" + resultItems.get(i).getImg_link()+"\") id = img1 >");
							%>
						</div>
						<div class="img-title">

							<%
								out.print("<p id=img-name>" + resultItems.get(i).getPro_name() +"</p>");
									out.print("<p id=img-price>" + resultItems.get(i).getPro_price() +"��"+ "</p>");
									if (resultItems.get(i).getPro_style() == 1) {
										out.print("<p id=img-style>��� ��Ÿ��</p>");
									}
									if (resultItems.get(i).getPro_style() == 2) {
										out.print("<p id=img-style>Ŭ���� ��Ÿ��</p>");
									}
									if (resultItems.get(i).getPro_style() == 3) {
										out.print("<p id=img-style>�θ�ƽ ��Ÿ��</p>");
									}
									if (resultItems.get(i).getPro_style() == 4) {
										out.print("<p id=img-style>���� ��Ÿ��</p>");
									}
									if (resultItems.get(i).getPro_style() == 5) {
										out.print("<p id=img-style>ĳ��� ��Ÿ��</p>");
									}
							%>

						</div>
					</div>
				</a>
				<%
					}
				%>

			</div>

		</section>



	</div>

	<script src="assets/js/banner.js"></script>
	<script src="assets/js/scrollEvent.js"></script>

</body>
</html>