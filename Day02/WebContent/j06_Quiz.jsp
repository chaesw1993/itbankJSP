<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--
    	1. Math.random()을 이요하여 국어, 영어, 수학점수를 입력받음(0~100점)
    	2. 총점, 평균, 등급 (A B C D F) 산출
    	3. 각 점수, 총점, 평균, 등급 출력
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