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
		<section class="login">
            <form action="LoginService.do" class="login-info" method="post">
                <div class="login-title">
                    <span class="login-form">ID</span>
                    <span class="login-form">PW</span>
                </div>
                <div class="login-input">

                    <input type="text" class="input-list" id="mem_id" name="mem_id" placeholder="ID를 입력하세요">
                    <input type="password" class="input-list" id="mem_pw" name="mem_pw" placeholder="PW를 입력하세요">
                    <input type="submit" id="submit" value="Login">

                </div>
            </form>
        </section>
       <jsp:include page="footer.jsp"></jsp:include>
</div>
<!-- <form action="LoginService.do">
	id : <input type="text" name="mem_id"> <br>
	pw : <input type="text" name="mem_pw"> <br>
	
	
	
	<input type="submit">
</form> -->
<script src="assets/js/scrollEvent.js"></script>
</body>
</html>