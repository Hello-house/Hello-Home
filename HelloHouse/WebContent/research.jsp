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
    <link rel="stylesheet" href="assets/css/test_select.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
<title>Insert title here</title>
<style>
	.test {
		background-image : url('assets/img/f5.png');
		/* background-repeat : no-repeat */;
		background-size : cover;
		width:auto;
		height:1000px;
	}
</style>
</head>
<body>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
			<section class="test" >
            <div class="container_1">
                
                <div class="choose-box">
                    <a href="user_research.jsp" class="choose"><button class="select">성향 분석</button>
                    </a>
                    <a href="interior.jsp" class="choose"><button class="select">32강</button>
                    </a>

                </div>
                
            </div>
            
        </section>
		
	</div>
	<script src="assets/js/page.js"></script>
</body>
</html>
