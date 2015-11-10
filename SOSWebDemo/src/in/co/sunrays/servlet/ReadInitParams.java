package in.co.sunrays.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * TBD
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */
public class ReadInitParams extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ServletConfig config = getServletConfig();

		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		out.println("<HTML><BODY>");
		out.println(" <H1> Initial Parameters from config(ServletConfig) implicit object : </H1>");
		out.println(" <B>Org</B> : " + config.getInitParameter("org"));
		out.println("</BODY></HTML>");
		out.close();
	}

}
