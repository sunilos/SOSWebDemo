package in.co.sunrays.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
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

public class TestForward extends HttpServlet {

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		System.out.println("This is B JSP " + request.getParameter("param"));
		request.setAttribute("B", "Value Set By B  Servlet");
		RequestDispatcher rd = request.getRequestDispatcher("/forward/C.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		super.doGet(request, response);
	}
}
