<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script	type="text/javascript">
		function go02(){
			frm1.action = "/Day05/j07_jscFun02.jsp";
			frm1.submit();
		}
		function go03(){
			frm1.action = "/Day05/j07_jscFun03.jsp";
			frm1.submit();
		}
		function go04(msg){
			frm1.action = "/Day05/j07_jscFun04.jsp";
			frm1.data2.value = msg;
			frm1.submit();
		}
		function goPage(msg){
			alert(msg);
			frm1.data.value = msg;
			frm1.action = "/Day05/j07_jscFun02.jsp";
			frm1.submit();
		}
	</script>
</head>
<body>
	<h2>form과 버튼에 대한 javascript의 함수</h2>
	<hr/>
	
	<form name="frm1" method="post">
		클라이언트 데이터 입력 : <input type="text" name="data"/><br/>
		프로그래머가 데이터 전송 : <input type="hidden" name="data2"/><br/>
		<input type="button" value="02 페이지로 이동" onclick="javascript:go02()"/><br/>
		<input type="button" value="03 페이지로 이동" onclick="javascript:go03()"/><br/>
		<input type="button" value="02 페이지로 데이터 직접전송" onclick="javascript:goPage('abc')"/><br/>
		<input type="button" value="04 페이지로 데이터 직접전송" onclick="javascript:go04('abc123')"/><br/>
	</form>
</body>
</html>