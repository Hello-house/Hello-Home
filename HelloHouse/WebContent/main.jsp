<%@page import="java.util.ArrayList"%>
<%@page import="com.model.ProductsDAO"%>
<%@page import="com.model.ProductsDTO"%>
<%@page import="com.model.MemberDTO"%>
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
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>

<div class="frame">
<%MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
	<jsp:include page="header.jsp"></jsp:include>
	 <section class="container-ad">
            <div class="banner"></div>
        </section>

        <section class="container-goods">
            <div class="goods-icons">
                <div class="goods-icons-title">
                    <h3></h3>
                </div>
                <div class="goods-icons-items">
                    <a href = "research.jsp" class="icons-link"> 
	                   	<span class="goods-item" id="button">
	                        <img src="assets/img/book.png" alt="" class="goods-icon">
	                        <div class="goods-title">추천서비스</div>
	                    </span>
                    </a>
                    <a href = "viewBaskets.jsp" class="icons-link">
	                    <span class="goods-item" id="button">
	                        <img src="assets/img/cart.png" alt="" class="goods-icon">
	                        <div class="goods-title">장바구니</div>
	                    </span>
                    </a>
                    <a href = "ProductsService.do" class="icons-link">
	                    <span class="goods-item" id="button">
	                        <img src="assets/img/desc.png" alt="" class="goods-icon">
	                        <div class="goods-title">상품</div>
	                    </span>
                    </a>
                    <a href = "service.jsp" class="icons-link">
	                    <span class="goods-item" id="button">
	                        <img src="assets/img/question.png" alt="" class="goods-icon">
	                        <div class="goods-title">고객센터</div>
	                    </span>
                    </a>
                </div>
            </div>
        </section>
        <%
		ProductsDTO dto = new ProductsDTO();
		ProductsDAO dao = ProductsDAO.getDAO();
		ArrayList<ProductsDTO> all = dao.selectAll(dto);
		System.out.print(all);
	%>
	<section class="container-goods">
			<div class="today-goods">
				<div class="today-goods-title">
					<h2 id="today-title">오늘의 상품</h2>
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

<script src="assets/js/banner.js"></script>
    <script src="assets/js/scrollEvent.js"></script>
</body>
</html>