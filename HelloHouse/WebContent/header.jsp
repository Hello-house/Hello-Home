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
						<span class="menu-items-list"><%=info.getMem_name() %>��</span>
						<span class="menu-items-list"><a href="update.jsp">���� ����</a></span>
						<span class="menu-items-list"><a href="LogoutService.do">�α׾ƿ�</a></span>
					<%} else {%>
						<span class="menu-items-list"><a href="LoginPage.jsp">�α���</a></span>
					    <span class="menu-items-list"><a href="JoinPage.jsp">ȸ������</a></span>
					<%} %>
					                    
                </div>
            </header>
            <header class="header-2-menu">
                <div class="header-menu-items">
                   
                    <% if (info != null){%>
						<span class="header-items-title"><a href="main.jsp">�ȳ��Ͽ콺</a></span>
                    	<span class="header-items-title"><a href="ProductsService.do">��ǰ</a></span>
	                    <span class="header-items-title"><a href="research.jsp">��õ����</a></span>
						<span class="header-items-title"><a href="viewBaskets.jsp">��ٱ���</a></span>
						<span class="header-items-title"><a href="#footer">ȸ��Ұ�</a></span>
						<span class="header-items-title"><a href="service.jsp">������</a></span>
					<%} else {%>
						<span class="header-items-title"><a href="main.jsp">�ȳ��Ͽ콺</a></span>
	                    <span class="header-items-title"><a href="ProductsService.do">��ǰ</a></span>
	                    <span class="header-items-title"><a href="research.jsp">��õ����</a></span>
	                    <span class="header-items-title"><a href="#footer">ȸ��Ұ�</a></span>
	                    <span class="header-items-title"><a href="service.jsp">������</a></span>
					<% } %>
                </div>
            </header>
        </section>
           