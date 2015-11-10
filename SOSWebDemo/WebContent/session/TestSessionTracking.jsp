<HTML>
<!-- 
A program to Track all session attributes. Use URL http://localhost:8080/ajkiapp/session/TestSessionTracking.jsp 
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->	
	<BODY>
		<a href=“MyJsp.jsp">Simple Link</a>
		<%
		String enUrl = response.encodeURL("MyJsp.jsp");
		%>
		<a href="MyJsp.jsp">Link</a>
		<a href="<%=enUrl%>">Encoded Link</a>

		<hr>
		This is my JSP page.
		<hr>

		<form action="MyJsp.jsp" method="GET">
			<input type="hidden" name="jsessionid" value="<%=session.getId()%>" />
			<input type="text" name="n" />
			<input type="submit" />
		</form>
	</BODY>
</HTML>
