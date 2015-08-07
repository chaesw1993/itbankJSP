<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>도착 페이지 : j04_form02</h2>
	<hr/>
	<%--
		form의 post방식으로 전송하는 데이터 중 한글이 포함된 경우, 도착페이지에서 전송받은 데이터의
		문자인코딩을 설정하는 작업이 필요하다.
	--%>
	<%
		request.setCharacterEncoding("euc-kr");
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	이름 : <%= name %>, 나이 : <%= age %><br/>
	10년 후 나이 : <%= age + 10 %>
</body>
</html>