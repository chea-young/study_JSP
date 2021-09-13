package com.lchy;

import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintStream;

import javax.servlet.*;
import javax.servlet.http.*;
public class HelloServlet extends HttpServlet {
	@Override
	public void service (HttpServletRequest request
			, HttpServletResponse response) throws IOException, ServletException{
		OutputStream os = response.getOutputStream();
		PrintStream out = new PrintStream(os, true);
		out.println("Hello Servlet");
	}

}