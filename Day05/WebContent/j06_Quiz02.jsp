<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>�α��� Ȯ�ο��� ������</h2>
	<hr/>
<%--
	�Ʒ��� �ִ� dbid�� dbpass�� ����
		1. ���̵� ���� ����ġ�ϸ� => �������� �ʴ� ���̵��Դϴ�.
		2. ���̵� ���� ��ġ, ��й�ȣ ����ġ�ϸ� => �߸��� ��й�ȣ �Դϴ�.
		3. ��� ���� ��ġ�ϸ� => �α��� �Ǿ����ϴ�.
--%>
	<%
		String dbid = "asdf";
		String dbpass = "1234";
		
		String id = request.getParameter("id");
		String pass = request.getParameter("pass");
		String msg = null;
		
		if(id.equals(dbid) && pass.equals(dbpass)){
			msg = "�α��� �Ǿ����ϴ�.";
		} else if(id.equals(dbid) && pass != dbpass){
			msg = "�߸��� ��й�ȣ �Դϴ�.";
		} else{
			msg = "�������� �ʴ� ���̵��Դϴ�.";
		}
	%>
	<%= msg %>
</body>
</html>