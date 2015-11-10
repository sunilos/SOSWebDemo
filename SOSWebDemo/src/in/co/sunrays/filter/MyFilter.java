package in.co.sunrays.filter;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;

public class MyFilter implements Filter {

	FilterConfig conf = null;

	public void destroy() {
		conf = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		System.out.println("I am Filter");

		HttpServletRequest httpRequest = (HttpServletRequest) request;
		System.out.println("Servlet Name " + httpRequest.getRequestURI());

		System.out.println("Request Paramaters are ");

		Enumeration e = request.getParameterNames();
		String key, value;
		while (e.hasMoreElements()) {
			key = (String) e.nextElement();
			value = request.getParameter(key);
			System.out.println(key + " = " + value);

		}

		chain.doFilter(request, response);

	}

	public void init(FilterConfig conf) throws ServletException {
		this.conf = conf;
	}

}
