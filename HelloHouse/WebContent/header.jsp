<%@page import="com.model.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%MemberDTO info = (MemberDTO)session.getAttribute("info"); %>

 <section class="header">
            <header class="header-1-menu">
                <div class="header-menu-logo">
                    <a href="main.jsp"><img src="assets/img/logo.png" alt="" id="logo"></a>
                </div>
                <div class="header-menu-items">
                    <form action="#" class="menu-items-list search-form"><!-- <input type="text" placeholder="Search"
                            id="search"> --></form>
                    <% if (info != null){%>
						<span class="menu-items-list"><%=info.getMem_name() %>님</span>
						<span class="menu-items-list"><a href="update.jsp">정보 수정</a></span>
						<span class="menu-items-list"><a href="LogoutService.do">로그아웃</a></span>
					<%} else {%>
						<span class="menu-items-list"><a href="LoginPage.jsp">로그인</a></span>
					    <span class="menu-items-list"><a href="JoinPage.jsp">회원가입</a></span>
					<%} %>
					                    
                </div>
            </header>
            <header class="header-2-menu">
                <div class="header-menu-items">
                   
                    <% if (info != null){%>
						<span class="header-items-title"><a href="main.jsp">안녕하우스</a></span>
                    	<span class="header-items-title"><a href="ProductsService.do">상품</a></span>
	                    <span class="header-items-title"><a href="research.jsp">추천서비스</a></span>
						<span class="header-items-title"><a href="viewBaskets.jsp">장바구니</a></span>
						<span class="header-items-title"><a href="#footer">회사소개</a></span>
						<span class="header-items-title"><a href="service.jsp">고객센터</a></span>
					<%} else {%>
						<span class="header-items-title"><a href="main.jsp">안녕하우스</a></span>
	                    <span class="header-items-title"><a href="ProductsService.do">상품</a></span>
	                    <span class="header-items-title"><a href="research.jsp">추천서비스</a></span>
	                    <span class="header-items-title"><a href="#footer">회사소개</a></span>
	                    <span class="header-items-title"><a href="service.jsp">고객센터</a></span>
					<% } %>
                </div>
            </header>
        </section>
           