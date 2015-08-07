<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 확인여부 페이지</h2>
	<hr/>
<%--
	아래에 있는 dbid와 dbpass에 따라
		1. 아이디 정보 불일치하면 => 존재하지 않는 아이디입니다.
		2. 아이디 정보 일치, 비밀번호 불일치하면 => 잘못된 비밀번호 입니다.
		3. 모든 정보 일치하면 => 로그인 되었습니다.
--%>
	<%
		String dbid = "asdf";
		String dbpass = "1234";
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String msg = null;
		
		if(id.equals(dbid) && pass.equals(dbpass)){
			msg = "로그인 되었습니다.";
		} else if(id.equals(dbid) && pass != dbpass){
			msg = "잘못된 비밀번호 입니다.";
		} else{
			msg = "존재하지 않는 아이디입니다.";
		}
	%>
	<%= msg %>
</body>
</html>