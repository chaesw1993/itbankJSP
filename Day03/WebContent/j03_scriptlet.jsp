<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		클라이언트가 내 서버에 보내온 로그인 정보
		-> tid : abcd / tpw : 1234
		
		내가 가진 회원 정보 중 로그인 정보
		-> dbid : abcd / dbpw : 1234 존재
		
		로그인 시도에 대한 결과를 제공하는 프로그램
	--%>
	<%
		// 두 정보에 대한 가정 - 변수로 설정하기
		String tid = "abcd";
		String tpw = "1234";
		
		String dbid = "abcd";
		String dbpw = "1234";
	%>
	
	<%
		if(tid.equals(dbid) && tpw.equals(dbpw)){
	%>
		로그인 되었습니다.<br/>
		<%= dbid %>님 환영합니다.<br/>
	<%
		} else{
	%>
		로그인에 실패하였습니다.<br/>
	<%
		}
	%>
</body>
</html>