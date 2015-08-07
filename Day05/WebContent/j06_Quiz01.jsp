<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>로그인 화면 - 아이디, 비밀번호 입력</h2>
	<hr/>
	
	<%--
		로그인 화면
			1. 아이디 입력
			2. 비밀번호 입력
			3. 로그인하기 버튼
			4. 다시쓰기 버튼
			5. 회원가입 페이지 이동 기능(ahref)
	--%>
	<form action="j06_Quiz02.jsp" method="post">
	<table border="1" style="width:40%; height:40%">
			<tr align="center">
				<td colspan="2">로그인 하세요.</td>
			</tr>
			<tr align="center">
				<td>ID</td>
				<td><input style="width:100%; height:100%" type="text" name="id"/></td>
			</tr>
			<tr align="center">
				<td>PASSWORD</td>
				<td><input style="width:100%; height:100%" type="text" name="pass"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="로그인"/>
								<input type="reset" value="다시쓰기"/>
				</td>
			</tr>
			<tr align="center">
				<td colspan="2">회원가입을 아직 하지 않으셨다면 <a href="/Day05/j05_regLog01.jsp">회원가입</a> 클릭</td>
			</tr>
		</table>
	</form>
</body>
</html>