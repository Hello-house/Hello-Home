<%@page import="com.model.ProductsDAO"%>
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
String[] pid = request.getParameterValues("pro_id");
BasketDAO dao = new BasketDAO();

for(int i=0; i<pid.length; i++){
	System.out.print(pid[i]);
	int pro_id = Integer.parseInt(pid[i]);
	System.out.print(pro_id);
	dao.delete(pro_id);

	}
response.sendRedirect("viewBaskets.jsp");



%>
</body>
</html>