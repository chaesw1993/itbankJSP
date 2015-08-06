<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="temp.Member" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	문제 : 학생 정보 프로그램
	1. 정보 : 이름, 국어, 영어, 수학, 총점, 평균, 등급
	2. 예제정보
		- 둘리 / 78 / 79 / 76
		- 도우너 / 49 / 79 / 16
		- 또치 / 74 / 85 / 96
	3. 클래스 이용하여 위의 내용을 저장 후 출력
	4. 출력되는 화면은 table 이용
--%>
	<%
		Member m1 = new Member("둘리", 78, 79, 76);
		Member m2 = new Member("도우너", 49, 79, 16);
		Member m3 = new Member("또치", 74, 85, 96);
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
		<tr>
			<td><%= m1.getName() %></td>
			<td><%= m1.getKor() %></td>
			<td><%= m1.getEng() %></td>
			<td><%= m1.getMath() %></td>
			<td><%= m1.total() %></td>
			<td><%= m1.avg() %></td>
			<td><%= m1.grade() %></td>
		</tr>
		<tr>
			<td><%= m2.getName() %></td>
			<td><%= m2.getKor() %></td>
			<td><%= m2.getEng() %></td>
			<td><%= m2.getMath() %></td>
			<td><%= m2.total() %></td>
			<td><%= m2.avg() %></td>
			<td><%= m2.grade() %></td>
		</tr>
		<tr>
			<td><%= m3.getName() %></td>
			<td><%= m3.getKor() %></td>
			<td><%= m3.getEng() %></td>
			<td><%= m3.getMath() %></td>
			<td><%= m3.total() %></td>
			<td><%= m3.avg() %></td>
			<td><%= m3.grade() %></td>
		</tr>
	</table>
</body>
</html>