<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>a 태그의 이용</h2>
	<hr/>
	
	<a href = "/Day05/j02_ahref.jsp">다음 화면으로 이동</a>
	<%--
		경로 표현 방법
			1. 상대경로 : 현재 파일 위치를 기준으로 원하는 위치 경로를 표현
						- 같은 디렉토리인 경우 : 파일 이름 표현
						- 하위 디렉토리 파일인 경우 : 디렉토리 이름 및 파일 이름 표현
						- 상위 디렉토리 파일인 경우 : 상위 경로 이동 표현(../) 및 해당
													 디렉토리 이름과 파일 이름 표현
			2. 절대경로
				- /프로젝트이름/.../... 형식 표현으로 시작함
				- WebContent 위치가 절대기준으로 설정됨		
				- 작성되는 파일의 위치에 상관없이 동일한 형식으로 이용 가능함	
	--%>
	<a href="/Day05/j02_ahref.jsp?msg1=abc&msg2=123&msg3=둘리">데이터를 전송하면서 다음 화면으로 이동</a>
	
	<%--
		URL을 통해 한글 데이터를 전송하는 경우 설정 : 
		- tomcat 서버의 server.xml 파일 내용중
			<Connector 부분에 URIEncoding="euc-kr"..> 을 추가한 후, 서버를 재가동한다.
	--%>
</body>
</html>