<HTML>
	<BODY>
	
	<!-- 

A program to set a session attributes. Use URL http://localhost:8080/ajkiapp/session/SetSession.jsp?key=id&value=Red 
to call this page and set a session attribute

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
 	
		<H1>Set Session</H1>

		<%
			String k = request.getParameter("key");
			String v = request.getParameter("value");

			session.setAttribute(k, v);
		%>

		Congartulation !! Session Attribute is set sucessfully!! <BR>

		Now get value from session 	<a href="http://localhost:8080/ajkiapp/session/GetSession.jsp">http://localhost:8080/ajkiapp/session/GetSession.jsp</a>
		
	</BODY>
</HTML>
