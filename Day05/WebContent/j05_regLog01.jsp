<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<h2>ȸ������ ������</h2>
	<hr/>
	
	<form action="/Day05/j05_regLog02.jsp" method="post">
		<table border="1" style="width:40%; height:40%">
			<tr align="center">
				<td>���̵�</td>
				<td><input style="width:100%; height:100%" type="text" name="id"/></td>
			</tr>
			<tr align="center">
				<td>��й�ȣ</td>
				<td><input style="width:100%; height:100%" type="text" name="pass"/></td>
			</tr>
			<tr align="center">
				<td colspan="2"><input type="submit" value="ȸ������"/>
								<input type="reset" value="�ٽþ���"/>
				</td>
			</tr>
		</table>
	</form>

</body>
</html>