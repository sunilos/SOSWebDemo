package in.co.sunrays.servlet;

import in.co.sunrays.advjava.dto.MarksheetDTO;

/**
 * TBD
 * 
 * @author SunilOS
 * @version 1.0
 * @Copyright (c) SunilOS 
 */

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class RollnoCtl extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("Inside Servlet");

		String rollNo = request.getParameter("rollNo");

		// Make jdbc collection
		if (!rollNo.equals("123")) {
			request.setAttribute("error", "RollNo nahi mila");
			RequestDispatcher rd = request.getRequestDispatcher("RollNO.jsp");
			rd.forward(request, response);

		}

		MarksheetDTO dto = new MarksheetDTO();
		dto.setRollNo(rollNo);
		dto.setName("Mahendra Singh Dhoni");
		dto.setMaths(90);
		dto.setChemistry(90);
		dto.setPhysics(90);

		System.out.println("Forwarding to Marksheet");

		request.setAttribute("marksheetDto", dto);
		RequestDispatcher rd = request.getRequestDispatcher("/Marksheet.jsp");
		rd.forward(request, response);

	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
