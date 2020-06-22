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
<link rel="stylesheet" href="assets/css/listItem.css">
</head>
<body>
	<%
		ProductsDTO goodsItem = (ProductsDTO) (session.getAttribute("goodsItem"));
	%>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>

		<section class="listItem">
			<div class="leftItem">
				
				<img style=background-image:url("assets/img/products_img/<%=goodsItem.getImg_link()%>") id="imgCover">
			
				
				<div class="item-title">
					<h1 class="title"></h1>
				</div>
				<div class="item-sub">
					<div class="price">
					</div>
				</div>
			</div>
			<div class="rightItem">
				<div class="item-img">
					<%-- <img src="assets/img/products_img/<%=goodsItem.getImg_link()%>"alt="" class="img-link"> --%>
						
				</div>
				<div class="item-title">
					<h1 class="title"><%=goodsItem.getPro_name()%></h1>
				</div>
				<div class="item-sub">
					<div class="price"><%=goodsItem.getPro_price()%>원</div>

					<div class="style">
						<%
							if (goodsItem.getPro_style() == 1) {
								out.print("모던");
							}
							if (goodsItem.getPro_style() == 2) {
								out.print("클래식");
							}
							if (goodsItem.getPro_style() == 3) {
								out.print("로맨틱");
							}
							if (goodsItem.getPro_style() == 4) {
								out.print("내츄럴");
							}
							if (goodsItem.getPro_style() == 5) {
								out.print("캐쥬얼");
							}
						%>

					</div>
					
				</div>
				<div class="purchase">
						<p class="tax">일반 택배</p>
						<p class="tax">무료 배송</p>
					</div>
				<div class="submitBtn">
					<form action="fakeBaskets.jsp" class="cart">
						<input type="number" value="수량" name="amounts" min='0' placeholder="수량을 선택해주세요" id="amountsBtn"> 
							
							<br>
						<input type="submit"class="cartBtn" value="장바구니">
						<input type="submit" class="buyBtn" value="바로구매">
					</form>
						
					</form>
				</div>
			</div>
		</section>
			<div class="centerItem">
				<%-- <img style=background-image:url("assets/img/interior_img/<%=goodsItem.getPro_coments()%>") id="imgCover"> --%>
			</div>
		<script src="assets/js/scrollEvent.js"></script>
		
	</div>
</body>
</html>