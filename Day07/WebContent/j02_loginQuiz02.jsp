<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>도착 페이지</h2>
	<hr/>
	<%
		request.setCharacterEncoding("euc-kr");
	%>
	아이디 : <%= request.getParameter("id") %><br/>
	비밀번호 : <%= request.getParameter("pass") %><br/>
	이름 : <%= request.getParameter("name") %><br/>
	생년월일 : <%= request.getParameter("birthday") %><br/><br/>
	<%
		String[] hobbys = request.getParameterValues("hobby");
	
		for(String hobby : hobbys){
	%>
		취미 : <%= hobby %><br/>
	<%
		}
	%>
	<%
		String memo = request.getParameter("memo");
		memo = memo.replaceAll("\n", "<br/>");
	%>
	<br/>
	메모<br/>
	<%=memo %>
</body>
</html>