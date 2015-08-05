<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		Day02의 06번 퀴즈 해답
	--%>
	
	<%
		String name = "둘리";
		int kor = (int)(Math.random()*100 + 1);
		int eng = (int)(Math.random()*100 + 1);
		int math = (int)(Math.random()*100 + 1);
						// 0.0 ~ 1.0 미만의 수를 줌 X 100을 하면 0.0~100.0 미만의 수
		int total = kor + eng + math;
		double avg = total / 3.0;
		
		String grade = null;
		// String 변수의 값이 나중에 결정되는 경우 null 이라는 기본값을 저장하여 프로그램의 안정성을 높임
		
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
	
	이름 : <%= name %><br/>
	국어 : <%= kor %><br/>
	영어 : <%= eng %><br/>
	수학 : <%= math %><br/>
	<hr/>
	총점 : <%= total %><br/>
	평균 : <%= avg %><br/>
	등급 : <%= grade %>
</body>
</html>