<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		Day02�� 06�� ���� �ش�
	--%>
	
	<%
		String name = "�Ѹ�";
		int kor = (int)(Math.random()*100 + 1);
		int eng = (int)(Math.random()*100 + 1);
		int math = (int)(Math.random()*100 + 1);
						// 0.0 ~ 1.0 �̸��� ���� �� X 100�� �ϸ� 0.0~100.0 �̸��� ��
		int total = kor + eng + math;
		double avg = total / 3.0;
		
		String grade = null;
		// String ������ ���� ���߿� �����Ǵ� ��� null �̶�� �⺻���� �����Ͽ� ���α׷��� �������� ����
		
		if(avg >= 90){
			grade = "A";
		} else if(avg >= 80){
			grade = "B";
		} else if(avg >= 70){
			grade = "C";
		} else if(avg >= 60){
			grade = "D";
		} else{
			grade = "F";
		}
	%>
	
	�̸� : <%= name %><br/>
	���� : <%= kor %><br/>
	���� : <%= eng %><br/>
	���� : <%= math %><br/>
	<hr/>
	���� : <%= total %><br/>
	��� : <%= avg %><br/>
	��� : <%= grade %>
</body>
</html>