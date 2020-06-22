<%@page import="com.model.BasketDTO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.model.MemberDTO"%>
<%@page import="sun.swing.BakedArrayList"%>
<%@page import="com.model.BasketDAO"%>
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
	<jsp:include page="header.jsp"></jsp:include>
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
           				 <%
           				 	String[] pid  = request.getParameterValues("pro_id");
           				 	for(int i=0; i<pid.length; i++){
           				 		System.out.print(pid[i]+"��ǰ���̵�");
           				 	}
           				 	
                    		BasketDAO dao = new BasketDAO();
                    		ArrayList<BasketDTO> prices = new ArrayList<BasketDTO>();
                    		ArrayList<Integer> allPrice = new ArrayList<Integer>();
                    		int sum=0;
                    		int total =0;
                    		for(int i=0; i<pid.length; i++){
                    			System.out.print(pid[i]);
                    			int pro_id = Integer.parseInt(pid[i]);
                    			System.out.print(pro_id);
                    			prices = dao.select_price(pro_id);
                    			int amount = prices.get(i).getAmount();
                    			int price = prices.get(i).getPro_price();
                    			sum = amount*price;
                    			allPrice.add(sum);
                    		}
                    		for (int i=0; i<allPrice.size(); i++){
                    			 total += allPrice.get(i);
                    		}
            				
            				
            				
                    	%>
                <!-- �����ݾױ��� -->
                <div class = "list-title">
                    <div id="title">���� ���� �ݾ�</div>
                </div>
                <div class="list-cost">
                    <div class="items-cost">
                        <div class="cost-info">�����ݾ�</div>
                        
                        <div class="output-cost"><%=total %></div>
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
                        <div class="output-cost" id="total"><%=total %></div>
                        
                    </div>             
                </div>
                <form action="">
                	<input type="button" value="����" id="submitBtn">
                </form>
            </div>
        </section>
	</div>
	<script>
		const submitBtn = document.querySelector('#submitBtn');
		submitBtn.addEventListener('click', function(e){
			e.preventDefault();
			alert("������ �Ϸ� �Ǿ����ϴ�.")
			});
		
	</script>
</body>
</html>