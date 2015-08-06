<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	요청 처리(필요한 정보 전달 받기)
	
	웹페이지로부터 정보를 받는 방법
		1. url
		http://sports.news.naver.com/sports/index.nhn
		?
			category=baseball
		&	ctg=news
		&	mod=read
		&	office_id=241
		&	article_id=0002449502		<< 파라미터 정보 : 웹페이지이름 ? 이름=값 & 이름=값 & ......
											=> 이름을 Key라고하고 값을 Value라고 함
												? 이후의 부분을 파라미터라고 부르는데 파라미터를 통해 내용을 전달받는다.
											=> 파라미터 정보는 JSP페이지에 내장되어있는
												request 객체로부터 제공받는다.
											=> request로부터 파라미터를 추출할 때에는
												request.getParameter("키이름")를 이용한다.
											=> request로부터 추출되는 파라미터는
												String타입으로 제공된다.
--%>
	<%
		String cid = request.getParameter("cid");
		String cpw = request.getParameter("cpw");
		String rcvage = request.getParameter("age");
		int age = Integer.parseInt(rcvage);
		System.out.println(cid);
		System.out.println(cpw);
		System.out.println(age);
		// 클라이언트가 내 서버쪽으로 보내온 로그인 정보
		// 클라이언트가 보내오는 모든 정보는 String 이므로 목적에 따라 형변환을 해야한다.
		
		String dbid = "abcd";
		String dbpw = "1234";
		// 내 서버가 정보를 조회한 후 확인된 로그인 정보
		
		String msg = null;
		
		if(cid.equals(dbid) && cpw.equals(dbpw)){
			msg = "로그인 되었습니다.<br>"
					+ dbid + "님 환영합니다.";
		} else{
			msg = "로그인에 실패하였습니다.";
		}
	%>
	msg = <%=msg %>
</body>
</html>