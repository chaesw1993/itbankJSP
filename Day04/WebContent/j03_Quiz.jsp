<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="temp.Member2" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%--
		문제
		학생 성적 정보 프로그램
		- 학생id, 국어, 영어, 수학, 총점, 평균, 등급
		- url 파라미터를 통해서
			ID, 국어, 영어, 수학을 전달받음
		- 전달받은 정보를 이용하여 클래스 객체에 저장
			=> 저장하면, 자동으로 총점, 평균, 등급이 저장됨
		- table에서 전체 결과 출력
	--%>
	<%
		Member2 m1 = new Member2();
		m1.setId(request.getParameter("id"));
		m1.setKor(Integer.parseInt(request.getParameter("kor")));
		m1.setEng(Integer.parseInt(request.getParameter("eng")));
		m1.setMath(Integer.parseInt(request.getParameter("math")));
	%>
	<table border="1" style="width:70%; height:50%">
		<tr align="center" style="height:30%">
			<td colspan="7">학생 정보 프로그램</td>
		</tr>
		<tr align="center">
			<td>이 름</td>
			<td>국 어</td>
			<td>영 어</td>
			<td>수 학</td>
			<td>총 점</td>
			<td>평 균</td>
			<td>등 급</td>
		</tr>
		<tr align = "center">
			<td><%= m1.getId() %></td>
			<td><%= m1.getKor() %></td>
			<td><%= m1.getEng() %></td>
			<td><%= m1.getMath() %></td>
			<td><%= m1.total() %></td>
			<td><%= m1.avg() %></td>
			<td><%= m1.grade() %></td>
		</tr>
	</table>
</body>
</html>