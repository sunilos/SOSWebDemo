<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>JSP/Servlet Web Application Examples</title>
</head>
<body>

	<H1>JSP/Servlet Web Application Examples</H1>

	<HR>
	<%
		String hostServer = request.getServerName();
		int serverPort = request.getServerPort();

		String contextPath = request.getContextPath();

		String URL = "http://" + hostServer + ":" + serverPort
				+ contextPath;
	%>

	<p>
		<B>contextPath</B>:
		<%=contextPath%>
	<p>
		<B>URL</B>:
		<%=URL%>
	<h2>Servlet Examples</h2>
	<OL>
		<LI><B>Hello Servlet</B>: Prints Hello World, <a
			href="<%=URL%>/servlet/HelloWorld"> <%=URL%>/servlet/HelloWorld
		</a>
		<LI><B>Akshay Kumar Servlet</B>: Prints a simple message, <a
			href="<%=URL%>/akki"> <%=URL%>/akki
		</a>
		<LI><B>Katrina Kaif Servlet</B>: Prints a simple message, <a
			href="<%=URL%>/kakki"> <%=URL%>/kakki
		</a>
		<LI><B>Katrina Kaif Servlet</B>: Maps Servlet with multiple URLs,
			<a href="<%=URL%>/SIK"> <%=URL%>/SIK
		</a> <BR> <code>
				One servlet is mapped with multiple URLs to provide <u>URL based
					security</u>
			</code>
		<LI><B>Wildcard Mapping ( *.khiladi will point to Akshay
				Kumar Servlet)</B>: <BR> <a href="<%=URL%>/international.khiladi"><%=URL%>/international.khiladi</a>
			<BR> <a href="<%=URL%>/SabseBada.khiladi"><%=URL%>/SabseBada.khiladi</a>
			<BR> <a href="<%=URL%>/786.khiladi"><%=URL%>/786.khiladi</a> <BR>
			<code>
				Wildcard mapping is used to provide <u>MAIN or FRONT Controller</u>
				in the Web Application
			</code>
	</OL>


	<h2>JSP Examples</h2>
	<OL>
		<LI><B>Hello JSP</B>: Prints Hello 5 times using Scriptlet and
			Expression tags, <a href="<%=URL%>/Hello.jsp"> <%=URL%>/Hello.jsp
		</a>
		<LI><B>Print Request Parameters </B>: Sending First Name and Last
			Name from query string, <a
			href="<%=URL%>/HelloName.jsp?fName=Vijay&lName=chauhan"> <%=URL%>/HelloName.jsp?fName=Vijay&lName=chauhan
		</a>
		<LI><B>HTML Form to send data to HelloName.jsp</B>: <a
			href="<%=URL%>/HelloForm.html"> <%=URL%>/HelloForm.html
		</a>
		<LI><B>HTML Form controls </B>: displays all input form fields<a
			href="<%=URL%>/SampleForm.html"> <%=URL%>/SampleForm.html
		</a>
	</OL>



	<h2>Handling Cookies</h2>
	<OL>
		<LI><B>Set Cookie </B>: Sets a Cookie, <a
			href="<%=URL%>/cookie/SetCookie.jsp"> <%=URL%>/cookie/SetCookie.jsp
		</a></LI>
		<LI><B>Get Cookies </B>: Sets a Cookie, <a
			href="<%=URL%>/cookie/GetCookie.jsp"> <%=URL%>/cookie/GetCookie.jsp
		</a></LI>

	</OL>

	<h2>Read Initial Configuration parameters</h2>
	<p>Some initial parameters can be set into Web.xml and read from a
		Servlet or JSP. Parameters are set by &lt;init-param &gt; tag inside
		&lt;servlet&gt; tag.</p>

	<OL>
		<LI><B>Read Initial Parameters from Servlet </B>: <a
			href="<%=URL%>/servlet/ReadInitParams"> <%=URL%>/servlet/ReadInitParams
		</a></LI>
		<LI><B>Read Initial Parameters from JSP </B>: <a
			href="<%=URL%>/jsp/ReadInitParams"> <%=URL%>/jsp/ReadInitParams
		</a></LI>
	</OL>

</body>
</html>