<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� ������ : j04_form02</h2>
	<hr/>
	<%--
		form�� post������� �����ϴ� ������ �� �ѱ��� ���Ե� ���, �������������� ���۹��� ��������
		�������ڵ��� �����ϴ� �۾��� �ʿ��ϴ�.
	--%>
	<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	�̸� : <%= name %>, ���� : <%= age %><br/>
	10�� �� ���� : <%= age + 10 %>
</body>
</html>