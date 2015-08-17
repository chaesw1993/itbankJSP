package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/loginResult")
public class J04_Quiz02 extends HttpServlet{
	// �α��� Ȯ�� ������
	// => dbid = abcd , dbpw=1234
	// => 1. ���̵� ����ġ�� ���, 2. ��й�ȣ ����ġ�� ���, 3. ��� ��ġ�ϴ� ���
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		String dbid = "abcd", dbpw = "1234";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String msg = null;
		
		PrintWriter out = response.getWriter();
		
		if(dbid.equals(id) && dbpw.equals(pw)){
			msg = "�α��� �Ǿ����ϴ�.";
		} else if(dbid.equals(id) && dbpw != pw){
			msg = "��й�ȣ�� Ʋ�Ƚ��ϴ�.";
		} else{
			msg = "���̵� Ʋ�Ƚ��ϴ�.";
		}
		
		out.println("<html><body>"
				+ "<h2>�α��� ����</h2><hr/>"
				+ msg);
		out.flush();
		out.close();
	}
}
