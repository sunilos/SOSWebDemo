package in.co.sunrays.servlet;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
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

public class SendImage extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("image/jpg");

		FileInputStream in = new FileInputStream("C:/sunrays/images/1.jpg");

		ServletOutputStream out = response.getOutputStream();

		byte[] buffer = new byte[256];
		int i = in.read(buffer);
		while (i > 0) {
			out.write(buffer, 0, i);
			in.read(buffer);
		}
		out.close();
		in.close();
	}

}
