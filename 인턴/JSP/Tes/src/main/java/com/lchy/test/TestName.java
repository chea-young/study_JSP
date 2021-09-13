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
		response.setContentType("text/html"); // text html 형태로 출력 하겠다고 지정함
		PrintWriter out = response.getWriter(); // response로 부터 출력 장치를 확보
		// html 내용을 출력
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
		response.setContentType("text/html"); // text html 형태로 출력 하겠다고 지정함
		PrintWriter out = response.getWriter(); // response로 부터 출력 장치를 확보
		String yourName = request.getParameter("your_name"); // request에서 화면으로 부터 넘어온 파라메터의 값을 추출 합니다.

		// html 내용을 출력
		out.println("<html>");
		out.println("hello, world<br/>");
		out.println("method : " + request.getMethod() + "<br/>");
		out.println("You'r name is " + yourName);
		out.println("</html>");
	}

}
