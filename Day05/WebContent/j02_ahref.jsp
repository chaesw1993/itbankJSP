<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>도착 페이지 : j02</h2>
	<hr/>
	<%
		String msg1 = request.getParameter("msg1");
		String msg2 = request.getParameter("msg2");
		String msg3 = request.getParameter("msg3");
	%>
	<%
		if(msg1 != null){
	%>
			msg1 = <%=msg1 %><br/>
			msg2 = <%=msg2 %><br/>
			msg3 = <%=msg3 %><br/>
	<%
		} else
	%>
</body>
</html>