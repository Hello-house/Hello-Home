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
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
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
		ProductsDTO dto = new ProductsDTO();
		ProductsDAO dao = ProductsDAO.getDAO();
		ArrayList<ProductsDTO> all = dao.selectAll(dto);
		System.out.print(all);
	%>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
		<!-- <section class="container-ad">
			<div class="banner"></div>
		</section> -->

		<section class="container-goods" style="padding-top:170px">
			<div class="show-goods">
			
				<div class="show-goods-items" id="bgImg" ">
					
					<h1 class="goods-item-title">인테리어 보러가기</h1>
					<div class="goods-item-link">
						<div class="item-1">
							<a href="ResearchService.do?id=modern" class="style">- 모던</a>
						</div>
						<div class="item-2"></div>
					</div>
					<div class="goods-item-link">
						<div class="item-1">
							<a href="ResearchService.do?id=casual" class="style">- 캐주얼</a>
						</div>
						<div class="item-2"></div>
					</div>
					<div class="goods-item-link">
						<div class="item-1">
							<a href="ResearchService.do?id=romantic" class="style">- 로맨틱</a>
						</div>
						<div class="item-2"></div>
					</div>
					<div class="goods-item-link">
						<div class="item-1">
							<a href="ResearchService.do?id=classic" class="style">- 클래식</a>
						</div>
						<div class="item-2"></div>
					</div>
					<div class="goods-item-link">
						<div class="item-1">
							<a href="ResearchService.do?id=natural" class="style">- 내추럴</a>
						</div>
						<div class="item-2"></div>
					</div>
					
				</div>
				<div class="show-goods-items img" >
					<img src="assets/img/sunhong.png">
				</div>
				<div class="show-goods-items img-list">
					<div class="img-list-items"></div>
					<div class="img-list-items"></div>
					<div class="img-list-items"></div>
					<div class="img-list-items"></div>
				</div>
			</div>
			<div class="goods-lists">



				<%
					for (int i = 0; i < 16; i++) {
						System.out.println(all.get(i).getPro_id());
				%>
				<a href="ProductsList.do?id=<%=all.get(i).getPro_id()%>">
					<div class="goods-list-item">
						<div class="img">
							<%
								/* out.print("<img src = assets/img/products_img/" + all.get(i).getImg_link() + " id = img1 style=background-image: url(" ") >"); */
								out.print("<img style=background-image:url(\"assets/img/products_img/" + all.get(i).getImg_link()+"\") id = img1 >");
							%>
						</div>
						<div class="img-title">

							<%
								out.print("<p id=img-name>" + all.get(i).getPro_name() +"</p>");
									out.print("<p id=img-price>" + all.get(i).getPro_price() +"원"+ "</p>");
									if (all.get(i).getPro_style() == 1) {
										out.print("<p id=img-style>모던 스타일</p>");
									}
									if (all.get(i).getPro_style() == 2) {
										out.print("<p id=img-style>클래식 스타일</p>");
									}
									if (all.get(i).getPro_style() == 3) {
										out.print("<p id=img-style>로맨틱 스타일</p>");
									}
									if (all.get(i).getPro_style() == 4) {
										out.print("<p id=img-style>내츄럴 스타일</p>");
									}
									if (all.get(i).getPro_style() == 5) {
										out.print("<p id=img-style>캐쥬얼 스타일</p>");
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


		<jsp:include page="footer.jsp"></jsp:include>

	</div>

	
	<script src="assets/js/scrollEvent.js"></script>

</body>
</html>