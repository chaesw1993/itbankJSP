<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>데이터 전송 페이지</h2>
	<hr/>
	<form action="/Day06/srv02" method="post">
		데이터 입력 : <input type="text" name="data"/>
		<br/>
		<input type="submit" value="전송"/>
	</form>
</body>
</html>