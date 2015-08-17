package srv;

import java.io.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/*
	���� �ۼ� ���
	1. Ŭ���� ���� �� extends HttpServlet�� ��ӹ޴´�.
		=> �Ϲ� Ŭ������ ������� ������ Ŭ������ ��ȯ��.
	2. web.xml ���Ͽ� ������ �̸��� ������ url�� �����Ѵ�.
	3. �����ӿ� ���� ���ó���� �����ϴ� �޼ҵ带 �������̵��Ͽ�, ���ϴ� ����� �����Ѵ�.
*/

public class J01_srv02 extends HttpServlet{
	// ����� ����� �� �ְԲ��Ϸ��� ������ �ؾ��Ѵ�. �װ��� ���� web.xml
	
	@Override
	// Ŭ���̾�Ʈ�� ������ get����� ��� ȣ��Ǵ� �޼ҵ�
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet�޼ҵ忡 ������");
		super.doGet(request, response);
	}
	
	@Override
	// Ŭ���̾�Ʈ�� ������ post����� ��� ȣ��Ǵ� �޼ҵ�
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost�޼ҵ忡 ������");
		
		// Ŭ���̾�Ʈ���� HTML�ڵ带 �����Ҷ� response�κ��� outputStream�� Ȯ���Ͽ� �̿��Ѵ�.
		//	=> ���� �����͸� ������ �� PrintWriter Ŭ������ ��Ʈ�� ��ü(out)�� �̿��Ѵ�.
		
		request.setCharacterEncoding("euc-kr");		// �Է¹��� �������� �ѱ�ó��
		response.setContentType("text/html; charset=euc-kr");	// ���������� �ѱ�ó��
		
		PrintWriter out = response.getWriter();
		String data = request.getParameter("data");
		
		out.println("<html><body>");
		out.println("������ : " + data + " <br/>");
		out.println("</html></body>");
		
		out.flush();
		out.close();
		
		super.doPost(request, response);
	}
}
