package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/login")
public class J04_Quiz01 extends HttpServlet{
	// �α��� ȭ�� ������ - ���̵�, ��й�ȣ �Է�
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>"
				+ "<form action='/Day06/loginResult' method='post'>"
				+ "���̵� : <input type='text' name='id'/>"
				+ "��й�ȣ : <input type='text' name='pw'/>"
				+ "<input type='submit' value='�α���'/>"
				+ "</form></body></html>");
		out.flush();
		out.close();
	}
}
