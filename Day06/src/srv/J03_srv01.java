package srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(urlPatterns={"/p1"})	// 맵핑
public class J03_srv01 extends HttpServlet{
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("J03_srv01 페이지 도착");
		
		response.setContentType("text/html; charset=euc-kr"); 
		PrintWriter out = response.getWriter();
		
		out.println("<html><body>"
				+ "<form action='/Day06/p2' method='post'>"
				+ "<input type='submit' value='페이지 이동하기'/>"
				+ "</form></body></html>");
		
		out.flush();
		out.close();
	}
}
