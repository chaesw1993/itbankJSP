<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%-- 
    	1. Math클래스를 이용하여 1~50세 나이를 변수에 저장
    	2. 나이에 따라 다음을 출력
    		- 나이가 20세 이상이면 " 할인 대상이 아닙니다."
    		- 나이가 10~19세이면 "청소년 할인 대상입니다."
    		- 나이가 10세 미만이면 "이용 불가능한 놀이기구입니다."
     --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		int age = (int)(Math.random()*50+1);
		if(age >= 20){
	%>
		<%= age %> : 할인대상이 아닙니다.
	<%
		}else if(age >= 10 && age < 20){
	%>
		<%= age %> : 청소년 할인 대상입니다.
	<%
		}else if(age < 10){
	%>
		<%= age %> : 이용 불가능한 놀이기구입니다.
	<%		
		}
	%>
</body>
</html>