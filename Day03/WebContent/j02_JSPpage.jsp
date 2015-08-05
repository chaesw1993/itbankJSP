<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>JSP : Java Server Page</h2>
	<hr/>
	
	<%-- 
		선언부 
			1. <%! %> 기호로 표현되는 영역
			2. 자바의 메서드를 정의할 수 있는 영역
			3. 변수를 선언하면, 전역변수의 의미를 가짐
	--%>
	
	<%!
		String mth(int data){
			return " 입력받은 데이터는 " + data + "입니다.";
		}
		int ret(){
			return gdata;
		}
		int gdata=10;
	%>
	
	<%--
		표현식 (expression)
			1. <%= %> 기호로 표현되는 영역
			2. 값을 출력할 때 사용됨
			3. 변수 및 메소드의 리턴값을 처리할 수 있음
	--%>
	
	전역변수 출력 : gdata = <%= gdata %> <br/>
	mth 메소드 : <%= mth(100) %><br/>
	ret 메소드 : <%= ret() %><br/>
	
	<%--
		스크립트릿(scriptlet)
			1. <% %> 기호로 표현되는 영역
			2. 자바에서 사용하는 명령들이 올 수 있다.
			3. 변수를 선언하면, 지역변수 기능을 갖는다.
	--%>
	
	<%
		int n = 10;
		String msg = mth(n);
		// mth(m) 이 오류가 나는 이유는 m이 지역변수이므로 선언 전 사용 불가능하다.
		int m = 30;
	%>
	n = <%= n %><br/>
	msg = <%= msg %><br/>
</body>
</html>