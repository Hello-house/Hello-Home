<%@page import="java.util.ArrayList"%>
<%@page import="com.model.BoardsDAO"%>
<%@page import="com.model.BoardsDTO"%>
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
		BoardsDTO dto  = new BoardsDTO();
		BoardsDAO dao = BoardsDAO.getDAO();
		
		ArrayList<BoardsDTO> all = dao.selectAll(dto);
		
		out.print("<table boarder = 1px solid black>");
		out.print("<tr><td>번호</td>");
		out.print("<td>제목</td>");
		out.print("<td>아이디</td>");
		out.print("<td>내용</td>");
		out.print("<td>날짜</td></tr>");
		
		
		for(int i=0; i<all.size(); i++){
			out.print("<tr>");
			out.print("<td>"+(i+1)+"</td>");
			out.print("<td>"+all.get(i).getBoard_title()+"</td>");
			out.print("<td>"+all.get(i).getMem_id()+"</td>");
			out.print("<td>"+all.get(i).getContent()+"</td>");
			out.print("<td>"+all.get(i).getBoa_date()+"</td>");
			out.print("<tr>");
		
		}
		
		
		
		out.print("</table>");
	%>
</body>
</html>