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
	// 로그인 확인 페이지
	// => dbid = abcd , dbpw=1234
	// => 1. 아이디 불일치할 경우, 2. 비밀번호 불일치할 경우, 3. 모두 일치하는 경우
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=euc-kr");
		String dbid = "abcd", dbpw = "1234";
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String msg = null;
		
		PrintWriter out = response.getWriter();
		
		if(dbid.equals(id) && dbpw.equals(pw)){
			msg = "로그인 되었습니다.";
		} else if(dbid.equals(id) && dbpw != pw){
			msg = "비밀번호가 틀렸습니다.";
		} else{
			msg = "아이디가 틀렸습니다.";
		}
		
		out.println("<html><body>"
				+ "<h2>로그인 상태</h2><hr/>"
				+ msg);
		out.flush();
		out.close();
	}
}
