<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>form �̿��ϱ� - GET���</h2>
	<hr/>
	<%--
		Get ���
			1. form�� method �⺻������ ������ ���
			2. �ּ�ǥ������ ���ؼ� ������ ���� �����Ͱ� ���۵�
			3. �̵��Ǵ� �����ʹ� String ���·� ó��
			4. �ѱ��� ǥ���ϴ� ��� �������� ������ �ʿ���.
	--%>
	<form action="/Day05/j03_form02.jsp" method="get">
		�̸� : <input type = "text" name = "name"><br/>
		���� : <input type = "text" name = "age"><br/>
		
		<input type="submit" value="�����ϱ�"/>
	</form>
</body>
</html>