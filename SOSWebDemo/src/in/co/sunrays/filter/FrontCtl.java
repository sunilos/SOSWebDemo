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

public class FrontCtl implements Filter {

	FilterConfig conf = null;

	public void destroy() {
		conf = null;
	}

	public void doFilter(ServletRequest request, ServletResponse response,
			FilterChain chain) throws IOException, ServletException {

		HttpServletRequest httpRequest = (HttpServletRequest) request;

		String name = httpRequest.getRequestURI();

		System.out.println("Server Name " + name);

		System.out.println("My responsibilities ");
		System.out
				.println("1 : Check if User is logged in then allow user to access application.");
		System.out
				.println("2 : Check if User has role permission to access requested JSP/Servlet.");
		System.out
				.println("3 : Log requested resource name, user id, timestamp for auditng perposes.");

		chain.doFilter(request, response);

		System.out.println(name
				+ " : Here I do post processing when respons is ready.");

	}

	public void init(FilterConfig conf) throws ServletException {
		this.conf = conf;
	}

}
