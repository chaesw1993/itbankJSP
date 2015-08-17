<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script type="text/javascript">
		function setEmail(){
			alert(frm.emailEx.value);
			frm.emailAll.value = frm.email.value + "@" + frm.emailEx.value;
		}
		function goSubmit(){
			if(frm.name.value==""){
				alert("이름을 입력하세요")
				frm.name.focus();	// 자동으로 커서가 name으로 가짐
				return;	// 리턴을 넣어서 처음부터 계속 다시검사 해야한다.
			}
			if(frm.id.value==""){
				alert("아이디를 입력하세요.")
				frm.id.focus();
				return;
			}
			if(frm.emailEx.value=="default"){
				alert("이메일을 입력하세요.");
				frm.emailEx.focus();
				return;
			}
			frm.submit();
				
		}
	</script>
</head>
<body>
	<form name="frm" action="/Day07/j01_regLog02.jsp" method="post">
		<input type="hidden" name="emailAll"/>
		
		<table border="1">
			<tr>
				<td>이름 입력</td>
				<td>
					<input type="text" name="name" value="채상원"/>
				</td>
			</tr>
			<tr>
				<td>아이디 입력</td>
				<td>
					<input type="text" name="id" value="csw"/> 
				</td>
			</tr>
			<tr>
				<td>비밀번호 입력</td>
				<td>
					<input type="password" name="pass" value="1234"/> 
				</td>
			</tr>
			<tr>
				<td>이메일 입력</td>
				<td>
					<input type="text" name="email" value="csw"/>
					@
					<select name="emailEx"/>
						<option value="default">직접선택</option>
						<option value="naver.com" onclick="javascript:setEmail()">naver.com</option> 
						<option value="daum.net" onclick="javascript:setEmail()">daum.net</option> 
						<option value="gamil.com" onclick="javascript:setEmail()">gmail.com</option> 
						<option value="nate.com" onclick="javascript:setEmail()">nate.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="radio" name="char" value="사냥" checked="checked"> 사냥
									<!-- checked는 웹페이지에 들어갔을때 기본체크되있는것을 설정하는것이다 -->
					<input type="radio" name="char" value="말타기"> 말타기
				</td>
			</tr>
			<tr>
				<%-- checkbox : 여러개 선택 => String[] 형태의 파라미터를 전송한다. --%>
				<td colspan="2">
					<input type="checkbox" name="hobby" value="잠자기"/>잠자기&nbsp;
					<input type="checkbox" name="hobby" value="게임"/>게임&nbsp;&nbsp;
					<input type="checkbox" name="hobby" value="먹기"/>먹기&nbsp;&nbsp;
				</td> 
			</tr>
			<tr>
			<%--
				textarea : 메모기능
					- 줄바꿈 명령어 \n로 설정되어 있음
					- 따라서 화면에 보여주는 경우 <br/>로 변환이 되어야 함
			 --%>
				<td colspan="2">
					<textarea name="contents" style="width:100%; height:100%"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="회원가입" onclick="javascript:goSubmit()"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>