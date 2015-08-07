<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>회원 가입 정보 출력 페이지(서버)</h2>
	<hr/>
	<%
		request.setCharacterEncoding("euc-kr");
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
	%>
	등록 ID : <%= id %><br/>
	등록 PASSWORD : <%= pass %><br/>
</body>
</html>