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
                <!-- ����� �Է� ���� -->
                <div class = "list-title" id="label">
                    <div id="title">�����</div>
                </div>
                <div class="list-input" id="label">
                    <div class="list-items">
                        <div class="title-info">�޴º�</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="�޴� ��">
                        </div>
                    </div>
                    <div class="list-items">
                        <div class="title-info">�ּ�</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="�ּ�">
                        </div>
                    </div>
                                            
                    <div class="list-items">
                        <div class="title-info">��ȭ��ȣ</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="��ȭ��ȣ">
                        </div>
                    </div>                       
                    <div class="list-items">
                        <div class="title-info">��û����</div>
                        <div class="input-info">
                            <input type="text" id="input" placeholder="��û����">
                        </div>
                    </div>                    
                </div>
            </div>
            <div class="panel">
                <!-- �����ݾױ��� -->
                <div class = "list-title">
                    <div id="title">���� ���� �ݾ�</div>
                </div>
                <div class="list-cost">
                    <div class="items-cost">
                        <div class="cost-info">�� ��ǰ �ݾ�</div>
                        <div class="output-cost">0</div>
                    </div>
                    <div class="items-cost">
                        <div class="cost-info">��ۺ�</div>
                        <div class="output-cost">0</div>
                    </div>                     
                    <div class="items-cost">
                        <div class="cost-info">����Ʈ</div>
                        <div class="output-cost">0</div>
                    </div>     
                    <div class="items-cost">
                        <div class="cost-info">���� �ݾ�</div>
                        <div class="output-cost" id="total">���Ͷ�</div>
                        
                    </div>             
                </div>
            </div>
        </section>
	</div>
</body>
</html>