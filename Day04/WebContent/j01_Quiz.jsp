<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="temp.Member" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	���� : �л� ���� ���α׷�
	1. ���� : �̸�, ����, ����, ����, ����, ���, ���
	2. ��������
		- �Ѹ� / 78 / 79 / 76
		- ����� / 49 / 79 / 16
		- ��ġ / 74 / 85 / 96
	3. Ŭ���� �̿��Ͽ� ���� ������ ���� �� ���
	4. ��µǴ� ȭ���� table �̿�
--%>
	<%
		Member m1 = new Member("�Ѹ�", 78, 79, 76);
		Member m2 = new Member("�����", 49, 79, 16);
		Member m3 = new Member("��ġ", 74, 85, 96);
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
		<tr>
			<td><%= m1.getName() %></td>
			<td><%= m1.getKor() %></td>
			<td><%= m1.getEng() %></td>
			<td><%= m1.getMath() %></td>
			<td><%= m1.total() %></td>
			<td><%= m1.avg() %></td>
			<td><%= m1.grade() %></td>
		</tr>
		<tr>
			<td><%= m2.getName() %></td>
			<td><%= m2.getKor() %></td>
			<td><%= m2.getEng() %></td>
			<td><%= m2.getMath() %></td>
			<td><%= m2.total() %></td>
			<td><%= m2.avg() %></td>
			<td><%= m2.grade() %></td>
		</tr>
		<tr>
			<td><%= m3.getName() %></td>
			<td><%= m3.getKor() %></td>
			<td><%= m3.getEng() %></td>
			<td><%= m3.getMath() %></td>
			<td><%= m3.total() %></td>
			<td><%= m3.avg() %></td>
			<td><%= m3.grade() %></td>
		</tr>
	</table>
</body>
</html>