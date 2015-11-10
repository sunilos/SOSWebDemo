<%@page import="java.util.Enumeration"%>
<HTML>
	<BODY>
	
<!-- 

A program to get all session attributes. Use URL 
http://localhost:8080/ajkiapp/session/Logout.jsp 
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->	
		<H1>
			You have loggedout
		</H1>

		<%
			session.invalidate();
		%>
	</BODY>
</HTML>
