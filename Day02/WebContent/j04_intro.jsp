<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--
    	���� ���������� Directive��� �θ���.
    	%@ : ���þ� (�������� ���� ���û���)
    --%>
    
    <!-- HTML �ּ� -->
    <%-- JSP �ּ� --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP ù ���α׷�</title>
</head>
<body>
	<h3>JSP ���α׷� �����ϱ�</h3>
	<%-- ���� ǥ�� �±� // ���ڰ� �پ����� ���� ũ�Ⱑ Ŀ�� --%>
	
	<hr/>	
	<%-- ���߱� --%>
	
	JSP ���α׷� �ۼ�<br/>		<%-- �������� �ݾ��ִ°� �´�. --%>
	-Math.random() �޼ҵ� �̿��ϱ�<br/>
	
	<%
		// ��ũ��Ʈ��(scriptlet) : �ڹ� ����� ó���ϴ� ����
		int num = (int)(Math.random()*100 + 1);
		System.out.println("num = " + num);
	%>
	
	num = <%= num %><br/>
	<%-- ǥ���� (expression) �̶� �θ��� --%>
</body>
</html>