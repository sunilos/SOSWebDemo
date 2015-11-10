package in.co.sunrays.servlet;

import in.co.sunrays.advjava.dto.StudentDTO;
import in.co.sunrays.advjava.service.StudentServices;

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

public class StudentMgtCtl extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doPost(request, response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		StudentDTO std = new StudentDTO();
		std.setRollNo(request.getParameter("rollNo"));
		std.setFirstName(request.getParameter("firstName"));
		std.setLastName(request.getParameter("lastName"));
		std.setSession(request.getParameter("session"));

		String op = request.getParameter("operation");

		String message = null;

		try {

			if (op.equals("Add")) {
				StudentServices.add(std);
				message = "Record successfully Added";
			} else if (op.equals("Modify")) {
				StudentServices.update(std);
				message = "Record successfully Updated";
			} else if (op.equals("Delete")) {
				StudentServices.delete(std.getRollNo());
				message = "Record successfully Deleted";
			}

			if (op.equals("Get")) {
				std = StudentServices.get(std.getRollNo());
				request.setAttribute("std", std);
				System.out.println("@@@ " + std.getFirstName());
				RequestDispatcher rd = request
						.getRequestDispatcher("student/StudentMgt.jsp");
				rd.forward(request, response);
			} else {
				response.setContentType("text/html");
				PrintWriter out = response.getWriter();
				out.println("<HTML>");
				out.println("  <HEAD><TITLE>A Servlet</TITLE></HEAD>");
				out.println("  <BODY>" + message);
				out.println("  </BODY>");
				out.println("</HTML>");
				out.flush();
				out.close();
			}

		} catch (Exception e) {
		}

	}
}
