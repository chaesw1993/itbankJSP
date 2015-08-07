<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>도착 페이지 : j03_form02</h2>
	<hr/>
	
	<%-- 문제 : 받은 파라미터 정보를 출력하세요 --%>
	
	<%
		String name = request.getParameter("name");
		int age = Integer.parseInt(request.getParameter("age"));
	%>
	
	이름 : <%= name %>, 나이 : <%= age %><br/>
	10년 후 나이 : <%= age + 10 %>
</body>
</html>