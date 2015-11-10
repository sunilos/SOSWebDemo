
<!-- 

Prints name received from request parameters.

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 
 -->
<HEAD>
<TITLE>Hello Name</TITLE>
</HEAD>
<BODY>

	<%
		//get parameters from request implicit object.
		String firstName = request.getParameter("fName");
		String lastName = request.getParameter("lName");

		String name = firstName + " " + lastName;
	%>

	<H1>
		Welcome <%=name%>
	</H1>

</BODY>

</HTML>
