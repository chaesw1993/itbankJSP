package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/p2"})
public class J03_srv02 extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>"
				+ "<h2>J03_srv02 페이지(/p2)에 도착함</h2>"
				+ "</body></html>");
	}
}
