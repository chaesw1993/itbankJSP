package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class J02_srv01 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>"
				+ "<form action='/Day06/temp.jsp' "
				+ "method='post'>"
				+ "데이터 입력 : <input type='text' name='data'/><br/>"
				+ "<input type='submit' value='전송하기'/>"
				+ "</form></html></body>");
		
		out.flush();
		out.close();
		
	}
}
