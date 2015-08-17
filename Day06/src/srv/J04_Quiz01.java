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
	// 로그인 화면 페이지 - 아이디, 비밀번호 입력
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>"
				+ "<form action='/Day06/loginResult' method='post'>"
				+ "아이디 : <input type='text' name='id'/>"
				+ "비밀번호 : <input type='text' name='pw'/>"
				+ "<input type='submit' value='로그인'/>"
				+ "</form></body></html>");
		out.flush();
		out.close();
	}
}
