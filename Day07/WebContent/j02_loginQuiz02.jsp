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
	���̵� : <%= request.getParameter("id") %><br/>
	��й�ȣ : <%= request.getParameter("pass") %><br/>
	�̸� : <%= request.getParameter("name") %><br/>
	������� : <%= request.getParameter("birthday") %><br/><br/>
	<%
		String[] hobbys = request.getParameterValues("hobby");
	
		for(String hobby : hobbys){
	%>
		��� : <%= hobby %><br/>
	<%
		}
	%>
	<%
		String memo = request.getParameter("memo");
		memo = memo.replaceAll("\n", "<br/>");
	%>
	<br/>
	�޸�<br/>
	<%=memo %>
</body>
</html>