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
<link href="https://fonts.googleapis.com/css?family=Sunflower:300&display=swap" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
			<section class="test">
            <div class="container_1">
                <div class="research-box">
                    <div class="all-research research_1">
                        <div class="research-index">
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                        </div>
                        <div class="research-content">
                            <h1 class="content-title">안녕하세요</h1>
                            <p class="content-sub">27가지 질문흥로...<br></p>

                        </div>
                        <div class="research-button">
                            <a href="research2.jsp"><button class="button-next">시작하기</a></button>
                        </div>
                    </div>
                   </div>
            </div>
        </section>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>