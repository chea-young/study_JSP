package com.lchy.test;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class TestName extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public TestName() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); // text html ���·� ��� �ϰڴٰ� ������
		PrintWriter out = response.getWriter(); // response�� ���� ��� ��ġ�� Ȯ��
		// html ������ ���
		out.println("<html>");
		out.println("hello, world<br/>");
		out.println("method : " + request.getMethod());
		out.println("</html>");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); // text html ���·� ��� �ϰڴٰ� ������
		PrintWriter out = response.getWriter(); // response�� ���� ��� ��ġ�� Ȯ��
		String yourName = request.getParameter("your_name"); // request���� ȭ������ ���� �Ѿ�� �Ķ������ ���� ���� �մϴ�.

		// html ������ ���
		out.println("<html>");
		out.println("hello, world<br/>");
		out.println("method : " + request.getMethod() + "<br/>");
		out.println("You'r name is " + yourName);
		out.println("</html>");
	}

}
