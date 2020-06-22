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
<title>Insert title here</title>
</head>
<body>
<div class="frame">
<jsp:include page="header.jsp"></jsp:include>
<section class="join">
            <form action="JoinService.do" class="join-info" method="post">
                <div class="join-title">
                    <span class="join-form">ID</span>
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
                  
                        <input type="text" class="input-list" id="mem_id" name="mem_id" placeholder="안녕하세요" required="true">
                        <input type="password" class="input-list" id="mem_pw" name="mem_pw" placeholder="안녕하세요" required="true">
                        <input type="password" class="input-list" id="mem_pw2" name="mem_pw2" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_name" name="mem_name" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_age" name="mem_age" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_address" name="mem_add" placeholder="안녕하세요" required="true">
                        <input type="text" class="input-list" id="mem_tell" name="mem_tel" placeholder="안녕하세요" required="true">
                        <input type="radio" class="input-list" name="mem_gender" value="M" placeholder="안녕하세요" required="true">
                        <input type="radio" class="input-list" name="mem_gender" value="F" placeholder="안녕하세요" >
                        <input type="text" class="input-list" name="mem_style" placeholder="안녕하세요" required="true">
                        <input type="submit" id="submit" value="Join">
                   
                </div>
            </form>
        </section>
<jsp:include page="footer.jsp"></jsp:include>
</div>
<!-- <form action="JoinService.do">
	id : <input type="text" name="mem_id"> <br>
	pw : <input type="text" name="mem_pw"> <br>
	name : <input type="text" name="mem_name"> <br>
	age : <input type="text" name="mem_age"> <br>
	address : <input type="text" name="mem_add"> <br>
	tell : <input type="text" name="mem_tel"> <br>
	남 : <input type="radio" name="mem_gender" value="M"> <br>
	여 : <input type="radio" name="mem_gender" value="F"> <br>
	style : <input type="text" name="mem_style"> <br>
	grade : <input type="text" name="mem_grade"> <br>
	<input type="submit">
</form> -->
<script src="assets/js/scrollEvent.js"></script>
</body>
</html>