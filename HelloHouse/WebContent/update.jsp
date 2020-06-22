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
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
</head>
<body>
<div class="frame">
<%MemberDTO info = (MemberDTO)session.getAttribute("info"); %>
<section class="join">
            <form action="UpdateService.do" class="join-info" method="post">
                <div class="join-title">
                    
                    <span class="join-form">PW-input</span>
                    <span class="join-form">PW-check</span>
                    <span class="join-form">Name</span>
                    <span class="join-form">age</span>
                    <span class="join-form">Address</span>
                    <span class="join-form">tell</span>
                    <span class="join-form">남</span>
                    <span class="join-form">여</span>
                    <span class="join-form">style</span>

                </div>
                <div class="join-input">
                     	<input type="password" class="input-list" id="mem_pw" name="mem_pw" placeholder="안녕하세요" required="true">
                        <input type="password" class="input-list" id="mem_pw2" name="mem_pw2" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_name" name="mem_name" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_age" name="mem_age" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_address" name="mem_add" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_tell" name="mem_tel" placeholder="안녕하세요" required="true">
                        <input type="radio" class="input-list" name="mem_gender" value="M" placeholder="안녕하세요" required="true">
                        <input type="radio" class="input-list" name="mem_gender" value="F" placeholder="안녕하세요" >
                        <input type="text" class="input-list" name="mem_style" placeholder="안녕하세요" required="true">
                        <input type="submit" id="submit" value="저장하기">
                </div>
            </form>
        </section>
<jsp:include page="footer.jsp"></jsp:include>
</div>
</body>
</html>