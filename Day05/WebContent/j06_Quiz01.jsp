<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�α��� ȭ�� - ���̵�, ��й�ȣ �Է�</h2>
	<hr/>
	
	<%--
		�α��� ȭ��
			1. ���̵� �Է�
			2. ��й�ȣ �Է�
			3. �α����ϱ� ��ư
			4. �ٽþ��� ��ư
			5. ȸ������ ������ �̵� ���(ahref)
	--%>
	<form action="j06_Quiz02.jsp" method="post">
	<table border="1" style="width:40%; height:40%">
			<tr align="center">
				<td colspan="2">�α��� �ϼ���.</td>
			</tr>
			<tr align="center">
				<td>ID</td>
				<td><input style="width:100%; height:100%" type="text" name="id"/></td>
			</tr>
			<tr align="center">
				<td>PASSWORD</td>
				<td><input style="width:100%; height:100%" type="text" name="pass"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="�α���"/>
								<input type="reset" value="�ٽþ���"/>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">ȸ�������� ���� ���� �����̴ٸ� <a href="/Day05/j05_regLog01.jsp">ȸ������</a> Ŭ��</td>
			</tr>
		</table>
	</form>
</body>
</html>