package in.co.sunrays.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Simple Hello Servlet
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */
public class HelloWorld extends HttpServlet {

	/**
	 * Handles GET request
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");

		PrintWriter out = response.getWriter();
		out.println("<HTML>");
		out.println("<BODY>");
		out.println("<H1>Hello World</H1>");
		out.println("</BODY>");
		out.println("</HTML>");
		out.close();
	}

	/**
	 * Handles POST request
	 */

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

}
