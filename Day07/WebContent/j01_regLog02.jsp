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
	이름 : <%= request.getParameter("name") %><br/>
	아이디 : <%= request.getParameter("id") %><br/>
	비밀번호 : <%= request.getParameter("pass") %><br/>
	이메일 : <%= request.getParameter("email") %><br/>
	이메일Ex : <%= request.getParameter("emailEx") %><br/>
	emailAll : <%= request.getParameter("emailAll") %><br/>
	특기 : <%= request.getParameter("char") %><br/>
	
	<%
		String[] hobbys = request.getParameterValues("hobby");
	
		for(String hobby : hobbys){
	%>
		취미 : <%= hobby %><br/>
	<%
		}
	%>
	<%
		String contents = request.getParameter("contents");
		contents = contents.replaceAll("\n", "<br/>");
	%>
	
	메모 : <%=contents %>
</body>
</html>