<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP : Java Server Page</h2>
	<hr/>
	
	<%-- 
		����� 
			1. <%! %> ��ȣ�� ǥ���Ǵ� ����
			2. �ڹ��� �޼��带 ������ �� �ִ� ����
			3. ������ �����ϸ�, ���������� �ǹ̸� ����
	--%>
	
	<%!
		String mth(int data){
			return " �Է¹��� �����ʹ� " + data + "�Դϴ�.";
		}
		int ret(){
			return gdata;
		}
		int gdata=10;
	%>
	
	<%--
		ǥ���� (expression)
			1. <%= %> ��ȣ�� ǥ���Ǵ� ����
			2. ���� ����� �� ����
			3. ���� �� �޼ҵ��� ���ϰ��� ó���� �� ����
	--%>
	
	�������� ��� : gdata = <%= gdata %> <br/>
	mth �޼ҵ� : <%= mth(100) %><br/>
	ret �޼ҵ� : <%= ret() %><br/>
	
	<%--
		��ũ��Ʈ��(scriptlet)
			1. <% %> ��ȣ�� ǥ���Ǵ� ����
			2. �ڹٿ��� ����ϴ� ��ɵ��� �� �� �ִ�.
			3. ������ �����ϸ�, �������� ����� ���´�.
	--%>
	
	<%
		int n = 10;
		String msg = mth(n);
		// mth(m) �� ������ ���� ������ m�� ���������̹Ƿ� ���� �� ��� �Ұ����ϴ�.
		int m = 30;
	%>
	n = <%= n %><br/>
	msg = <%= msg %><br/>
</body>
</html>