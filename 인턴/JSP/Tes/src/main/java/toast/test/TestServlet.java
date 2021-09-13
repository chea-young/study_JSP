package toast.test;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ToastURL")
public class TestServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	public TestServlet() {
		// TODO Auto-generated constructor stub
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String toast = request.getParameter("toast");
		String price = request.getParameter("price");
		
		response.setContentType("text/html; charset = utf-8");
		
		PrintWriter out = response.getWriter();
		out.println("<html>");
		out.println("  <body>");
		out.println(toast+"의 가격은"+price+"입니다.");
		out.println("  </body>");
		out.println("</html>");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
}
