<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>���� ������</h2>
	<hr/>
	<%
		request.setCharacterEncoding("euc-kr");
	%>
	�̸� : <%= request.getParameter("name") %><br/>
	���̵� : <%= request.getParameter("id") %><br/>
	��й�ȣ : <%= request.getParameter("pass") %><br/>
	�̸��� : <%= request.getParameter("email") %><br/>
	�̸���Ex : <%= request.getParameter("emailEx") %><br/>
	emailAll : <%= request.getParameter("emailAll") %><br/>
	Ư�� : <%= request.getParameter("char") %><br/>
	
	<%
		String[] hobbys = request.getParameterValues("hobby");
	
		for(String hobby : hobbys){
	%>
		��� : <%= hobby %><br/>
	<%
		}
	%>
	<%
		String contents = request.getParameter("contents");
		contents = contents.replaceAll("\n", "<br/>");
	%>
	
	�޸� : <%=contents %>
</body>
</html>