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
				alert("�̸��� �Է��ϼ���")
				frm.name.focus();	// �ڵ����� Ŀ���� name���� ����
				return;	// ������ �־ ó������ ��� �ٽð˻� �ؾ��Ѵ�.
			}
			if(frm.id.value==""){
				alert("���̵� �Է��ϼ���.")
				frm.id.focus();
				return;
			}
			if(frm.emailEx.value=="default"){
				alert("�̸����� �Է��ϼ���.");
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
				<td>�̸� �Է�</td>
				<td>
					<input type="text" name="name" value="ä���"/>
				</td>
			</tr>
			<tr>
				<td>���̵� �Է�</td>
				<td>
					<input type="text" name="id" value="csw"/> 
				</td>
			</tr>
			<tr>
				<td>��й�ȣ �Է�</td>
				<td>
					<input type="password" name="pass" value="1234"/> 
				</td>
			</tr>
			<tr>
				<td>�̸��� �Է�</td>
				<td>
					<input type="text" name="email" value="csw"/>
					@
					<select name="emailEx"/>
						<option value="default">��������</option>
						<option value="naver.com" onclick="javascript:setEmail()">naver.com</option> 
						<option value="daum.net" onclick="javascript:setEmail()">daum.net</option> 
						<option value="gamil.com" onclick="javascript:setEmail()">gmail.com</option> 
						<option value="nate.com" onclick="javascript:setEmail()">nate.com</option>
					</select>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="radio" name="char" value="���" checked="checked"> ���
									<!-- checked�� ���������� ������ �⺻üũ���ִ°��� �����ϴ°��̴� -->
					<input type="radio" name="char" value="��Ÿ��"> ��Ÿ��
				</td>
			</tr>
			<tr>
				<%-- checkbox : ������ ���� => String[] ������ �Ķ���͸� �����Ѵ�. --%>
				<td colspan="2">
					<input type="checkbox" name="hobby" value="���ڱ�"/>���ڱ�&nbsp;
					<input type="checkbox" name="hobby" value="����"/>����&nbsp;&nbsp;
					<input type="checkbox" name="hobby" value="�Ա�"/>�Ա�&nbsp;&nbsp;
				</td> 
			</tr>
			<tr>
			<%--
				textarea : �޸���
					- �ٹٲ� ��ɾ� \n�� �����Ǿ� ����
					- ���� ȭ�鿡 �����ִ� ��� <br/>�� ��ȯ�� �Ǿ�� ��
			 --%>
				<td colspan="2">
					<textarea name="contents" style="width:100%; height:100%"></textarea>
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<input type="button" value="ȸ������" onclick="javascript:goSubmit()"/>
				</td>
			</tr>
		</table>
	</form>
</body>
</html>