<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "dto.J07_People" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>클래스의 이용</h2>
	<hr/>
	
	<%-- 1. 변수를 이용한 프로그램 작성 --%>
	<%
		String name = "도우너";
		int age = 12;
		
		String ac = null;
		if(age <= 19){
			ac = name + " 은/는 청소년 할인 대상입니다.";
		} else{
			ac = name + " 은/는 청소년 할인 대상이 아닙니다.";
		}
	%>
	
	<%-- 2. 클래스를 이용한 프로그램 작성 --%>
	<%
		J07_People peo2 = new J07_People("또치", 20);
		J07_People peo3 = new J07_People("도우너", 23);
	%>
	<table style="width : 100%; height:70%" border="1">
		<tr style="height : 20%">
			<td>이  름</td>
			<td>나  이</td>
			<td>할인 여부</td>
		</tr>
		<tr>
			<td><%=name %></td>
			<td><%=age %></td>
			<td><%=ac %></td>
		</tr>
		<tr>
			<td><%= peo2.getName() %></td>
			<td><%= peo2.getAge() %></td>
			<td><%= peo2.getAc() %></td>
		</tr>
			<tr>
			<td><%= peo3.getName() %></td>
			<td><%= peo3.getAge() %></td>
			<td><%= peo3.getAc() %></td>
		</tr>
	</table>
</body>
</html>