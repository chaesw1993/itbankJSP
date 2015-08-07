<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>form 이용하기 - GET방식</h2>
	<hr/>
	<%--
		Get 방식
			1. form의 method 기본값으로 설정된 방식
			2. 주소표시줄을 통해서 지정된 값과 데이터가 전송됨
			3. 이동되는 데이터는 String 형태로 처리
			4. 한글을 표시하는 경우 서버에서 설정이 필요함.
	--%>
	<form action="/Day05/j03_form02.jsp" method="get">
		이름 : <input type = "text" name = "name"><br/>
		나이 : <input type = "text" name = "age"><br/>
		
		<input type="submit" value="전송하기"/>
	</form>
</body>
</html>