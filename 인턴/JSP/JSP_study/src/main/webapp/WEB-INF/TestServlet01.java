package kr.co.lchy.servlet;

import java.io.IOException; 
import java.io.PrintWriter;
import jakarta.servlet.http.HttpServletResponse;
import javax.servlet.*;
import javax.servlet.http.*;

public class Test extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException { 
    	resp.setContentType("text/html");  
    	PrintWriter out = resp.getWriter(); 
		out.println("<html>");
		out.println("<head>");
		out.println("<title>Hello World!</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1>Hello World!</h1>");
		out.println("</body");
		out.println("</html>");
		out.close(); 
	}

}
