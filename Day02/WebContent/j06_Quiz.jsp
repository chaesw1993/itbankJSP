<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--
    	1. Math.random()�� �̿��Ͽ� ����, ����, ���������� �Է¹���(0~100��)
    	2. ����, ���, ��� (A B C D F) ����
    	3. �� ����, ����, ���, ��� ���
    --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int kor = (int)(Math.random()*100);
		int eng = (int)(Math.random()*100);
		int math = (int)(Math.random()*100);
		String korGrade = "";
		String engGrade = "";
		String mathGrade = "";
		if(kor > 90){
			korGrade = "A";
		}
	%>
</body>
</html>