<%@page isErrorPage="true"%>

<%@page import="java.io.StringWriter"%>
<%@page import="java.io.PrintWriter"%>

<html>
<!-- 

A program to check the error in JSP. 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 
 -->

	<body>
	
	<% 
	String message=null;
	
	if(exception instanceof NumberFormatException){
	    message = "Value is not a number, Please enter a valid integer value";
	} else if (exception instanceof NullPointerException){
	 	message = "Value can not be null";
	}
	%>
		<font color="red"> <%=message%><br> </font>




<pre>
		
		
		<%
			out.println("<!--");
			out.println("Source : " + request.getRequestURI());
			StringWriter sw = new StringWriter();
			PrintWriter pw = new PrintWriter(sw);
			exception.printStackTrace(pw);
			out.print(sw);
			sw.close();
			pw.close();
			out.println("-->");
		%>
		</pre>
	</body>
</html>
