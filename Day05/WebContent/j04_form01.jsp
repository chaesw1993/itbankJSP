<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>form 이용하기 : post 방식</h2>
	<hr/>
	<%--
		Post 방식
			1. form 안에 지정된 정보가 숨겨진 상태로 전송됨
			2. 대량의 데이터 전송에 적합한 방식
			3. 한글을 전송하는 경우, 수신하는 페이지에서의 인코딩 처리가 필요함.
	--%>
	<form action="/Day05/j04_form02.jsp" method="post">
		이름 : <input type = "text" name = "name"><br/>
		나이 : <input type = "text" name = "age"><br/>
		
		<input type="submit" value="전송하기"/>
	</form>
</body>
</html>