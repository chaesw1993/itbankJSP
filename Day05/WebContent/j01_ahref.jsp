<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>a �±��� �̿�</h2>
	<hr/>
	
	<a href = "/Day05/j02_ahref.jsp">���� ȭ������ �̵�</a>
	<%--
		��� ǥ�� ���
			1. ����� : ���� ���� ��ġ�� �������� ���ϴ� ��ġ ��θ� ǥ��
						- ���� ���丮�� ��� : ���� �̸� ǥ��
						- ���� ���丮 ������ ��� : ���丮 �̸� �� ���� �̸� ǥ��
						- ���� ���丮 ������ ��� : ���� ��� �̵� ǥ��(../) �� �ش�
													 ���丮 �̸��� ���� �̸� ǥ��
			2. ������
				- /������Ʈ�̸�/.../... ���� ǥ������ ������
				- WebContent ��ġ�� ����������� ������		
				- �ۼ��Ǵ� ������ ��ġ�� ������� ������ �������� �̿� ������	
	--%>
	<a href="/Day05/j02_ahref.jsp?msg1=abc&msg2=123&msg3=�Ѹ�">�����͸� �����ϸ鼭 ���� ȭ������ �̵�</a>
	
	<%--
		URL�� ���� �ѱ� �����͸� �����ϴ� ��� ���� : 
		- tomcat ������ server.xml ���� ������
			<Connector �κп� URIEncoding="euc-kr"..> �� �߰��� ��, ������ �簡���Ѵ�.
	--%>
</body>
</html>