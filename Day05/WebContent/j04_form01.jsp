<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>form �̿��ϱ� : post ���</h2>
	<hr/>
	<%--
		Post ���
			1. form �ȿ� ������ ������ ������ ���·� ���۵�
			2. �뷮�� ������ ���ۿ� ������ ���
			3. �ѱ��� �����ϴ� ���, �����ϴ� ������������ ���ڵ� ó���� �ʿ���.
	--%>
	<form action="/Day05/j04_form02.jsp" method="post">
		�̸� : <input type = "text" name = "name"><br/>
		���� : <input type = "text" name = "age"><br/>
		
		<input type="submit" value="�����ϱ�"/>
	</form>
</body>
</html>