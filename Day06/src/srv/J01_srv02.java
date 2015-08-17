package srv;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
	서블릿 작성 방법
	1. 클래스 생성 후 extends HttpServlet을 상속받는다.
		=> 일반 클래스가 웹통신이 가능한 클래스로 변환됨.
	2. web.xml 파일에 서블릿의 이름과 맵핑할 url을 설정한다.
	3. 웹접속에 대한 기능처리를 제공하는 메소드를 오버라이드하여, 원하는 기능을 구현한다.
*/

public class J01_srv02 extends HttpServlet{
	// 여기와 통신할 수 있게끔하려면 맵핑을 해야한다. 그것을 위한 web.xml
	
	@Override
	// 클라이언트의 접근이 get방식일 경우 호출되는 메소드
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet메소드에 도착함");
		super.doGet(request, response);
	}
	
	@Override
	// 클라이언트의 접근이 post방식일 경우 호출되는 메소드
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost메소드에 도착함");
		
		// 클라이언트에게 HTML코드를 전송할땐 response로부터 outputStream을 확보하여 이용한다.
		//	=> 문자 데이터를 전송할 땐 PrintWriter 클래스의 스트림 객체(out)를 이용한다.
		
		request.setCharacterEncoding("euc-kr");		// 입력받은 데이터의 한글처리
		response.setContentType("text/html; charset=euc-kr");	// 페이지내의 한글처리
		
		PrintWriter out = response.getWriter();
		String data = request.getParameter("data");
		
		out.println("<html><body>");
		out.println("데이터 : " + data + " <br/>");
		out.println("</html></body>");
		
		out.flush();
		out.close();
		
		super.doPost(request, response);
	}
}
