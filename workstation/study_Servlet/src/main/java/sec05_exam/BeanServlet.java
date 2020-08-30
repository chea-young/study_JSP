package sec05_exam;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class BeanServlet
 */
@WebServlet("/choice")
public class BeanServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public BeanServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("text/html; charset=utf-8");
		PrintWriter out = response.getWriter();
		String[] bean = request.getParameterValues("bean");
		out.println("<HTML>");
		out.println("<HEAD><TITLE>¿ÏµÎÄá</TITLE><HEAD>");
		out.println("<BODY bgcolor='yellow' >");
		out.println("<table align='center' bgcolor='green'>");
		out.println("<tr>");
		for (int i = 0; i < bean.length; i++) {
			out.println("<td>");
			out.println("<img src='" + bean[i] + "' width='300px' height='400px'");
			out.println("</td>");
			out.println("</br>");
		}
		out.println("</tr>");
		out.println("</table>");
		out.println("</BODY>");
		out.println("</HTML>");

		out.close();

	}

}
