<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--
    	위의 구성내용을 Directive라고 부른다.
    	%@ : 지시어 (페이지에 대한 지시사항)
    --%>
    
    <!-- HTML 주석 -->
    <%-- JSP 주석 --%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>JSP 첫 프로그램</title>
</head>
<body>
	<h3>JSP 프로그램 시작하기</h3>
	<%-- 제목 표현 태그 // 숫자가 줄어들수록 글자 크기가 커짐 --%>
	
	<hr/>	
	<%-- 선긋기 --%>
	
	JSP 프로그램 작성<br/>		<%-- 열었으면 닫아주는게 맞다. --%>
	-Math.random() 메소드 이용하기<br/>
	
	<%
		// 스크립트릿(scriptlet) : 자바 명령을 처리하는 영역
		int num = (int)(Math.random()*100 + 1);
		System.out.println("num = " + num);
	%>
	
	num = <%= num %><br/>
	<%-- 표현식 (expression) 이라 부른다 --%>
</body>
</html>