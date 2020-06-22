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

            <!-- ���� -->
            <div class="notice">
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="�ȳ���" class='loud'>
                    <span class="font">[����] �ȳ��Ͽ콺 �ָ����� �İ� ���� ���� Ȯ���ϼ���!</span>
                </div>
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="�ȳ���" class='loud'>
                    <span class="font">[����] �ȳ��ϼ��� Ȩ���ΰ����Դϴ�. �ݰ����ϴ�.</span>
                </div>
                <div class="notice_page">
                    <img src="assets/img/board/loud_speaker.png" alt="�ȳ���" class='loud'>
                    <span class="font">[����] �θ� ���� �̷Ӱ� �ϱ� ���� �츮�� �Դ�!</span>
                </div>
            </div>

            <!-- �Խ��� -->
            <div class="boards">
                
               
            </div>
            <div class="write">
                <button>�۾���</button>
            </div>
            
            <!-- ��������ȣ -->
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