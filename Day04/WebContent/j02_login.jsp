<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	��û ó��(�ʿ��� ���� ���� �ޱ�)
	
	���������κ��� ������ �޴� ���
		1. url
		http://sports.news.naver.com/sports/index.nhn
		?
			category=baseball
		&	ctg=news
		&	mod=read
		&	office_id=241
		&	article_id=0002449502		<< �Ķ���� ���� : ���������̸� ? �̸�=�� & �̸�=�� & ......
											=> �̸��� Key����ϰ� ���� Value��� ��
												? ������ �κ��� �Ķ���Ͷ�� �θ��µ� �Ķ���͸� ���� ������ ���޹޴´�.
											=> �Ķ���� ������ JSP�������� ����Ǿ��ִ�
												request ��ü�κ��� �����޴´�.
											=> request�κ��� �Ķ���͸� ������ ������
												request.getParameter("Ű�̸�")�� �̿��Ѵ�.
											=> request�κ��� ����Ǵ� �Ķ���ʹ�
												StringŸ������ �����ȴ�.
--%>
	<%
		String cid = request.getParameter("cid");
		String cpw = request.getParameter("cpw");
		String rcvage = request.getParameter("age");
		int age = Integer.parseInt(rcvage);
		System.out.println(cid);
		System.out.println(cpw);
		System.out.println(age);
		// Ŭ���̾�Ʈ�� �� ���������� ������ �α��� ����
		// Ŭ���̾�Ʈ�� �������� ��� ������ String �̹Ƿ� ������ ���� ����ȯ�� �ؾ��Ѵ�.
		
		String dbid = "abcd";
		String dbpw = "1234";
		// �� ������ ������ ��ȸ�� �� Ȯ�ε� �α��� ����
		
		String msg = null;
		
		if(cid.equals(dbid) && cpw.equals(dbpw)){
			msg = "�α��� �Ǿ����ϴ�.<br>"
					+ dbid + "�� ȯ���մϴ�.";
		} else{
			msg = "�α��ο� �����Ͽ����ϴ�.";
		}
	%>
	msg = <%=msg %>
</body>
</html>