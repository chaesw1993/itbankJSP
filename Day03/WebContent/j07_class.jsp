<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "dto.J07_People" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>Ŭ������ �̿�</h2>
	<hr/>
	
	<%-- 1. ������ �̿��� ���α׷� �ۼ� --%>
	<%
		String name = "�����";
		int age = 12;
		
		String ac = null;
		if(age <= 19){
			ac = name + " ��/�� û�ҳ� ���� ����Դϴ�.";
		} else{
			ac = name + " ��/�� û�ҳ� ���� ����� �ƴմϴ�.";
		}
	%>
	
	<%-- 2. Ŭ������ �̿��� ���α׷� �ۼ� --%>
	<%
		J07_People peo2 = new J07_People("��ġ", 20);
		J07_People peo3 = new J07_People("�����", 23);
	%>
	<table style="width : 100%; height:70%" border="1">
		<tr style="height : 20%">
			<td>��  ��</td>
			<td>��  ��</td>
			<td>���� ����</td>
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