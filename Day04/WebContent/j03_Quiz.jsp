<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="temp.Member2" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		����
		�л� ���� ���� ���α׷�
		- �л�id, ����, ����, ����, ����, ���, ���
		- url �Ķ���͸� ���ؼ�
			ID, ����, ����, ������ ���޹���
		- ���޹��� ������ �̿��Ͽ� Ŭ���� ��ü�� ����
			=> �����ϸ�, �ڵ����� ����, ���, ����� �����
		- table���� ��ü ��� ���
	--%>
	<%
		Member2 m1 = new Member2();
		m1.setId(request.getParameter("id"));
		m1.setKor(Integer.parseInt(request.getParameter("kor")));
		m1.setEng(Integer.parseInt(request.getParameter("eng")));
		m1.setMath(Integer.parseInt(request.getParameter("math")));
	%>
	<table border="1" style="width:70%; height:50%">
		<tr align="center" style="height:30%">
			<td colspan="7">�л� ���� ���α׷�</td>
		</tr>
		<tr align="center">
			<td>�� ��</td>
			<td>�� ��</td>
			<td>�� ��</td>
			<td>�� ��</td>
			<td>�� ��</td>
			<td>�� ��</td>
			<td>�� ��</td>
		</tr>
		<tr align = "center">
			<td><%= m1.getId() %></td>
			<td><%= m1.getKor() %></td>
			<td><%= m1.getEng() %></td>
			<td><%= m1.getMath() %></td>
			<td><%= m1.total() %></td>
			<td><%= m1.avg() %></td>
			<td><%= m1.grade() %></td>
		</tr>
	</table>
</body>
</html>