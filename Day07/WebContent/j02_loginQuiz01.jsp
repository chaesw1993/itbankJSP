<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
	<script>
		function setBirthday(){
			frm.birthday.value = frm.birth.value + "�� " +frm.month.value + "�� " + frm.day.value +  "��";
		}
		function goSubmit(){
			if(frm.id.value==""){
				alert("���̵� �Է��ϼ���.")
				frm.id.focus();
				return;
			}
			if(frm.pass.value==""){
				alert("��й�ȣ�� �Է��ϼ���.")
				frm.pass.focus();
				return;
			}
			if(frm.pass.value != frm.passCheck.value){
				alert("�Էµ� ��й�ȣ�� ���� �ٸ��ϴ�.")
				frm.passCheck.focus();
				return;
			}
			if(frm.name.value==""){
				alert("�̸��� �Է��ϼ���")
				frm.name.focus();	
				return;	
			}
			if(frm.birth.value==""){
				alert("�¾ �⵵�� �Է��ϼ���.")
				frm.birth.focus();
				return;
			}
			if(frm.month.value=="default"){
				alert("�¾ ���� �Է��ϼ���")
				frm.month.focus();
				return;
			}
			if(frm.day.value=="default"){
				alert("�¾ ���� �Է��ϼ���")
				frm.day.focus();
				return;
			}
			frm.submit();
		}
	</script>
</head>
<body>
	<h2>ȸ������ ������</h2>
	<hr/>
	
	<form name="frm" action="j02_loginQuiz02.jsp" method="post">
	<input type="hidden" name="birthday"/>
		<table border="1" style="width:70%; height:100%" cellspacing="0" cellpadding="3">
			<tr align="center" style="height:20%">
				<td colspan="4">NAVER</td>
			</tr>
			<tr align="center">
				<td>���̵� (�ʼ��Է�)</td>
				<td colspan="3">
					<input type="text" name="id"/>@naver.com
				</td>
			</tr>
			<tr align="center">
				<td>��й�ȣ (�ʼ��Է�)</td>
				<td colspan="3">
					<input type="password" name="pass"/>
				</td>
			</tr>
			<tr align="center">
				<td>��й�ȣ Ȯ�� (�ʼ��Է�)</td>
				<td colspan="3">
					<input type="password" name="passCheck"/>
				</td>
			</tr>
			<tr align="center">
				<td>�̸� (�ʼ��Է�)</td>
				<td colspan="3">
					<input type="text" name="name"/>
				</td>
			</tr>
			<tr align="center">
				<td>���� (�ʼ��Է�)</td>
				<td colspan="3">
					<input type="radio" name="sex" value="����" checked="checked"/>����
					<input type="radio" name="sex" value="����"/>����
				</td>
			</tr>
			<tr align="center">
				<td>���� (�ʼ��Է�)</td>
				<td>
					<input type="text" name="birth" size="10">��
				</td>
				<td>
					<select name="month">
						<option value="default" onclick="javascript:setBirthday()">��</option>
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
						<option value="default">��</option>
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
				<td>���</td>
				<td colspan="3">
					<input type="checkbox" name="hobby" value="����"/>����
					<input type="checkbox" name="hobby" value="�丮"/>�丮
					<input type="checkbox" name="hobby" value="���ڱ�"/>���ڱ�
					<input type="checkbox" name="hobby" value="���"/>���
					<input type="checkbox" name="hobby" value="�Ա�"/>�Ա�
				</td>
			</tr>
			<tr style="height:25%" align="center">
				<td>������� ����� ���� ��</td>
				<td colspan="3">
					<textarea name="memo" style="width:100%; height:100%"/></textarea>
				</td>
			</tr>
			<tr align="center">
				<td colspan="4">
					<input type="button" value="ȸ������" onclick="javascript:goSubmit()"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>