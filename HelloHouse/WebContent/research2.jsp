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
                    <form>
                    	<div class="research_2 faded-in-page">
                        <div class="research-index">
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                            <span class="index_check"></span>
                        </div>
                        <div class="research-content">
                            <h1 class="content-title">1.주택의 실내디자인은 거주자의 특성에 맞추어 독특한 것이 좋다</h1>
                            <div class="research-steps">
                                <form action="" id="research-content-1">
                                    <input type="radio" id="steps_check1" value="1" name="ans"><label
                                        for="steps_check1"></label>
                                    <input type="radio" id="steps_check2" value="2" name="ans"><label
                                        for="steps_check2"></label>
                                    <input type="radio" id="steps_check3" value="3" name="ans"><label
                                        for="steps_check3"></label>
                                    <input type="radio" id="steps_check4" value="4" name="ans"><label
                                        for="steps_check4"></label>
                                    <input type="radio" id="steps_check5" value="5" name="ans"><label
                                        for="steps_check5"></label>
                                </form>
                            </div>
                            <img src="../img/steps.png" alt="" class="Steps">
                        </div>
                        <div class="research-button">
                            <button class="button-pre">이전으로</button>
                            <button class="button-next">다음으로</button>
                        </div>
                    </form>
                   </div>
            </div>
        </section>
		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>