<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		Ŭ���̾�Ʈ�� �� ������ ������ �α��� ����
		-> tid : abcd / tpw : 1234
		
		���� ���� ȸ�� ���� �� �α��� ����
		-> dbid : abcd / dbpw : 1234 ����
		
		�α��� �õ��� ���� ����� �����ϴ� ���α׷�
	--%>
	<%
		// �� ������ ���� ���� - ������ �����ϱ�
		String tid = "abcd";
		String tpw = "1234";
		
		String dbid = "abcd";
		String dbpw = "1234";
	%>
	
	<%
		if(tid.equals(dbid) && tpw.equals(dbpw)){
	%>
		�α��� �Ǿ����ϴ�.<br/>
		<%= dbid %>�� ȯ���մϴ�.<br/>
	<%
		} else{
	%>
		�α��ο� �����Ͽ����ϴ�.<br/>
	<%
		}
	%>
</body>
</html>