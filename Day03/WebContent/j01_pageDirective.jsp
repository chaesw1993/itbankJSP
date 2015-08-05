<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%--
    	Directive 란 ?
    		1. <%@...%> 기호로 표현되는 영역
    		2. Directive의 종류
    			- page : JSP page 에 대한 정보 설정
    					(JSP가 생성하는 문서 타입 등)
    			- taglib : 사용할 taglib를 지정
    			- include : JSP 페이지의 특정 영역에 다른 페이지를 포함시키는 기능
    --%>
    <%--
    	page Directive ?
    		1. language : 사용할 언어 - java만 가능
    		2. contentType : JSP 페이지가 생성할 문서에 대한 타입 설정
				    			- text/html (기본값)
				    			- text/xml
				    			- text/plain
			    			생성문서에서 사용할 문자 설정
			    				- ISO-8859-1(기본/영문기반)
			    				- euc-kr
			    				- utf-8
    		3. pageEncoding : 현재 작성중인 JSP 파일에 대한 문자 인코딩 설정
    		4. import : JSP파일이 사용할 외부 파일 설정
    					(클래스 파일 이용시 필요)
    --%>
<html>

<%-- html 설정 주석 영역 시작 - 생략 가능 --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<%-- html 설정 주석 영역 끝 --%>
<body>
	<h2>JSP의 페이지 디렉티브</h2>
	<hr/>
</body>
</html>