<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%--
	1. 학생정보 테이블 만들기
		- 이름 / 국어 / 영어 / 수학 / 총점 / 평균
		- 둘리 / 79 / 76 / 78 / * / *
		- 도우너 / 89 / 94 / 83
 --%>
	<%!
		String name1 = "둘리";
		String name2 = "도우너";
		int kor1 = 79;
		int kor2 = 89;
		int eng1 = 76;
		int eng2 = 94;
		int math1 = 78;
		int math2 = 83;
		
		int total(int kor, int eng, int math){
			return kor + eng + math;
		}
		double avg(int kor, int eng, int math){
			int total = total(kor, eng, math);
			return total / 3.0;
		};
	%>
<table border="1" style="width :30%; height : 30%">
	<tr>
		<td align="center">이름</td>
		<td align="center">국어</td>
		<td align="center">영어</td>
		<td align="center">수학</td>
		<td align="center">총점</td>
		<td align="center">평균</td>
	</tr>
	<tr>
		<td><%= name1 %></td>
		<td><%= kor1 %></td>
		<td><%= eng1 %></td>
		<td><%= math1 %></td>
		<td><%= total(kor1, eng1, math1) %></td>
		<td><%= avg(kor1, eng1, math1) %></td>
	</tr> 
	<tr>
		<td><%= name2 %></td>
		<td><%= kor2 %></td>
		<td><%= eng2 %></td>
		<td><%= math2 %></td>
		<td><%= total(kor2, eng2, math2) %></td>
		<td><%= avg(kor2, eng2, math2) %></td>
	</tr>
</table>
</body>
</html>