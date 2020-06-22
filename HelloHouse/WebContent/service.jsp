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
<link rel="stylesheet" href="assets/css/board.css">
<link href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap" rel="stylesheet">
</head>
<body>

	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
		

        <section class="content_board">

            <!-- 공지 -->
            <div class="notice">
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="안나옴" class='loud'>
                    <span class="font">[공지] 안녕하우스 주말맞이 파격 세일 지금 확인하세요!</span>
                </div>
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="안나옴" class='loud'>
                    <span class="font">[공지] 안녕하세요 홈익인간팀입니다. 반갑습니다.</span>
                </div>
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="안나옴" class='loud'>
                    <span class="font">[공지] 널리 집을 이롭게 하기 위해 우리가 왔다!</span>
                </div>
            </div>

            <!-- 게시판 -->
            <div class="boards">
                
               
            </div>
            <div class="write">
                <button>글쓰기</button>
            </div>
            
            <!-- 페이지번호 -->
            <div class="page">
                
            </div>
        </section>
		
		
		
		<jsp:include page="footer.jsp"></jsp:include>

	</div>
	<script src="assets/js/scrollEvent.js"></script>
    <script src="assets/js/jquery-3.4.1.min.js"></script>
	<script src="assets/js/service.js" charset="UTF-8"></script>
</body>
</html>