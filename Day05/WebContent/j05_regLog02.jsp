<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ�� ���� ���� ��� ������(����)</h2>
	<hr/>
	<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
	%>
	��� ID : <%= id %><br/>
	��� PASSWORD : <%= pass %><br/>
</body>
</html>