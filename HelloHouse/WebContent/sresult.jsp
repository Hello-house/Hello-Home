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
<link rel="stylesheet" href="assets/css/showResult.css">
<link rel="stylesheet" href="assets/css/sresult.css">
<link
	href="https://fonts.googleapis.com/css?family=Do+Hyeon|Nanum+Gothic+Coding|Nanum+Gothic:800|Noto+Sans+KR&display=swap"
	rel="stylesheet">
<title>Insert title here</title>
</head>
<body>

	<%String getString = request.getParameter("id"); %>
	<div class="frame">
		<jsp:include page="header.jsp"></jsp:include>
		<section class="contain">
			<div class="subTitle"><h6>당신의 스타일은</h6></div>
            <div class="title">
         
               
            </div>
            <div class="show">
                <button class="resultBtn">상품 보러가기</button>
            </div>

        </section>
	</div>
	<Script>
		const resultBtn = document.querySelector('.resultBtn');
		const title = document.querySelector('.title');
		console.log(title);
		let b = "<%= getString%>";
		title.textContent = '"'+b.toUpperCase()+'"'; 
		
		/* const title = document.querySelector('.title');
		let text = title.textNode(title.toUpperCase());
		title.textContext = title.toUpperCase(); */
		
		console.log(resultBtn);
		resultBtn.addEventListener('click',function(){
   		 	console.log('click');
   		 	let a = "<%=getString%>";
   		 	
   			location.href='ResearchService.do?id='+a;
   		 	console.log(a);
		})
	</Script>
</body>
</html>