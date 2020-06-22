<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<link rel="stylesheet" href="assets/css/main2.css">
    <link rel="stylesheet" href="assets/css/purchase.css">
<title>Insert title here</title>
</head>
<body>
	<div class="frame">
		<section class="purchase" id="buy">
            <div class="panel">
                <!-- 배송지 입력 구역 -->
                <div class = "list-title" id="label">
                    <div id="title">배송지</div>
                </div>
                <div class="list-input" id="label">
                    <div class="list-items">
                        <div class="title-info">받는분</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="받는 분">
                        </div>
                    </div>
                    <div class="list-items">
                        <div class="title-info">주소</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="주소">
                        </div>
                    </div>
                                            
                    <div class="list-items">
                        <div class="title-info">전화번호</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="전화번호">
                        </div>
                    </div>                       
                    <div class="list-items">
                        <div class="title-info">요청사항</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="요청사항">
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="panel">
                <!-- 결제금액구역 -->
                <div class = "list-title">
                    <div id="title">최종 결제 금액</div>
                </div>
                <div class="list-cost">
                    <div class="items-cost">
                        <div class="cost-info">총 상품 금액</div>
                        <div class="output-cost">0</div>
                    </div>
                    <div class="items-cost">
                        <div class="cost-info">배송비</div>
                        <div class="output-cost">0</div>
                    </div>                     
                    <div class="items-cost">
                        <div class="cost-info">포인트</div>
                        <div class="output-cost">0</div>
                    </div>     
                    <div class="items-cost">
                        <div class="cost-info">결제 금액</div>
                        <div class="output-cost" id="total">나와라</div>
                        
                    </div>             
                </div>
            </div>
        </section>
	</div>
</body>
</html>