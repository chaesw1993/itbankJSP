<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 
    	1. MathŬ������ �̿��Ͽ� 1~50�� ���̸� ������ ����
    	2. ���̿� ���� ������ ���
    		- ���̰� 20�� �̻��̸� " ���� ����� �ƴմϴ�."
    		- ���̰� 10~19���̸� "û�ҳ� ���� ����Դϴ�."
    		- ���̰� 10�� �̸��̸� "�̿� �Ұ����� ���̱ⱸ�Դϴ�."
     --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = (int)(Math.random()*50+1);
		if(age >= 20){
	%>
		<%= age %> : ���δ���� �ƴմϴ�.
	<%
		}else if(age >= 10 && age < 20){
	%>
		<%= age %> : û�ҳ� ���� ����Դϴ�.
	<%
		}else if(age < 10){
	%>
		<%= age %> : �̿� �Ұ����� ���̱ⱸ�Դϴ�.
	<%		
		}
	%>
</body>
</html>