<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script>
		function setBirthday(){
			frm.birthday.value = frm.birth.value + "년 " +frm.month.value + "월 " + frm.day.value +  "일";
		}
		function goSubmit(){
			if(frm.id.value==""){
				alert("아이디를 입력하세요.")
				frm.id.focus();
				return;
			}
			if(frm.pass.value==""){
				alert("비밀번호를 입력하세요.")
				frm.pass.focus();
				return;
			}
			if(frm.pass.value != frm.passCheck.value){
				alert("입력된 비밀번호가 서로 다릅니다.")
				frm.passCheck.focus();
				return;
			}
			if(frm.name.value==""){
				alert("이름을 입력하세요")
				frm.name.focus();	
				return;	
			}
			if(frm.birth.value==""){
				alert("태어난 년도를 입력하세요.")
				frm.birth.focus();
				return;
			}
			if(frm.month.value=="default"){
				alert("태어난 월을 입력하세요")
				frm.month.focus();
				return;
			}
			if(frm.day.value=="default"){
				alert("태어난 일을 입력하세요")
				frm.day.focus();
				return;
			}
			frm.submit();
		}
	</script>
</head>
<body>
	<h2>회원가입 페이지</h2>
	<hr/>
	
	<form name="frm" action="j02_loginQuiz02.jsp" method="post">
	<input type="hidden" name="birthday"/>
		<table border="1" style="width:70%; height:100%" cellspacing="0" cellpadding="3">
			<tr align="center" style="height:20%">
				<td colspan="4">NAVER</td>
			</tr>
			<tr align="center">
				<td>아이디 (필수입력)</td>
				<td colspan="3">
					<input type="text" name="id"/>@naver.com
				</td>
			</tr>
			<tr align="center">
				<td>비밀번호 (필수입력)</td>
				<td colspan="3">
					<input type="password" name="pass"/>
				</td>
			</tr>
			<tr align="center">
				<td>비밀번호 확인 (필수입력)</td>
				<td colspan="3">
					<input type="password" name="passCheck"/>
				</td>
			</tr>
			<tr align="center">
				<td>이름 (필수입력)</td>
				<td colspan="3">
					<input type="text" name="name"/>
				</td>
			</tr>
			<tr align="center">
				<td>성별 (필수입력)</td>
				<td colspan="3">
					<input type="radio" name="sex" value="남자" checked="checked"/>남자
					<input type="radio" name="sex" value="여자"/>여자
				</td>
			</tr>
			<tr align="center">
				<td>생년 (필수입력)</td>
				<td>
					<input type="text" name="birth" size="10">년
				</td>
				<td>
					<select name="month">
						<option value="default" onclick="javascript:setBirthday()">월</option>
						<option value="1" onclick="javascript:setBirthday()">1</option>
						<option value="2" onclick="javascript:setBirthday()">2</option>
						<option value="3" onclick="javascript:setBirthday()">3</option>
						<option value="4" onclick="javascript:setBirthday()">4</option>
						<option value="5" onclick="javascript:setBirthday()">5</option>
						<option value="6" onclick="javascript:setBirthday()">6</option>
						<option value="7" onclick="javascript:setBirthday()">7</option>
						<option value="8" onclick="javascript:setBirthday()">8</option>
						<option value="9" onclick="javascript:setBirthday()">9</option>
						<option value="10" onclick="javascript:setBirthday()">10</option>
						<option value="11" onclick="javascript:setBirthday()">11</option>
						<option value="12" onclick="javascript:setBirthday()">12</option>
					</select>
				</td>
				<td>
					<select name="day">
						<option value="default">일</option>
						<option value="1" onclick="javascript:setBirthday()">1</option>
						<option value="2" onclick="javascript:setBirthday()">2</option>
						<option value="3" onclick="javascript:setBirthday()">3</option>
						<option value="4" onclick="javascript:setBirthday()">4</option>
						<option value="5" onclick="javascript:setBirthday()">5</option>
						<option value="6" onclick="javascript:setBirthday()">6</option>
						<option value="7" onclick="javascript:setBirthday()">7</option>
						<option value="8" onclick="javascript:setBirthday()">8</option>
						<option value="9" onclick="javascript:setBirthday()">9</option>
						<option value="10" onclick="javascript:setBirthday()">10</option>
						<option value="11" onclick="javascript:setBirthday()">11</option>
						<option value="12" onclick="javascript:setBirthday()">12</option>
						<option value="13" onclick="javascript:setBirthday()">13</option>
						<option value="14" onclick="javascript:setBirthday()">14</option>
						<option value="15" onclick="javascript:setBirthday()">15</option>
						<option value="16" onclick="javascript:setBirthday()">16</option>
						<option value="17" onclick="javascript:setBirthday()">17</option>
						<option value="18" onclick="javascript:setBirthday()">18</option>
						<option value="19" onclick="javascript:setBirthday()">19</option>
						<option value="20" onclick="javascript:setBirthday()">20</option>
						<option value="21" onclick="javascript:setBirthday()">21</option>
						<option value="22" onclick="javascript:setBirthday()">22</option>
						<option value="23" onclick="javascript:setBirthday()">23</option>
						<option value="24" onclick="javascript:setBirthday()">24</option>
						<option value="25" onclick="javascript:setBirthday()">25</option>
						<option value="26" onclick="javascript:setBirthday()">26</option>
						<option value="27" onclick="javascript:setBirthday()">27</option>
						<option value="28" onclick="javascript:setBirthday()">28</option>
						<option value="29" onclick="javascript:setBirthday()">29</option>
						<option value="30" onclick="javascript:setBirthday()">30</option>
						<option value="31" onclick="javascript:setBirthday()">31</option>
					</select>
				</td>
			</tr>
			<tr align="center">
				<td>취미</td>
				<td colspan="3">
					<input type="checkbox" name="hobby" value="게임"/>게임
					<input type="checkbox" name="hobby" value="요리"/>요리
					<input type="checkbox" name="hobby" value="잠자기"/>잠자기
					<input type="checkbox" name="hobby" value="놀기"/>놀기
					<input type="checkbox" name="hobby" value="먹기"/>먹기
				</td>
			</tr>
			<tr style="height:25%" align="center">
				<td>운영진에게 남기고 싶은 말</td>
				<td colspan="3">
					<textarea name="memo" style="width:100%; height:100%"/></textarea>
				</td>
			</tr>
			<tr align="center">
				<td colspan="4">
					<input type="button" value="회원가입" onclick="javascript:goSubmit()"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>