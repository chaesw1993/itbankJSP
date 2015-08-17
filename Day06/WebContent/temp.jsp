<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	servlet을 이용하여 도착한 페이지<hr/>
	<%
		String data = request.getParameter("data");
	%>
	
	전송받은 데이터 : <%= data %>
</body>
</html>