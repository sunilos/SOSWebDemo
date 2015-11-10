<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
	pageContext.setAttribute("pc", "This is Page Context Value");
	session.setAttribute("s", "This is Session Value");
	application.setAttribute("a", "This is Application Value");
	request.setAttribute("r", "This is Request Value");
%>
<html>
<!-- 

A program to set scope of jsp. Use URL 
http://localhost:8080/ajkiapp/scope/SetScope.jsp 
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
	<body>

		This is SetScope JSP page.
		<br>
		Session ID =<%=session.getId()%>
		<br>
		Session Created Date =<%=new Date(session.getCreationTime())%>
		<br>
		Session LastAccessed Date =
		<%=new Date(session.getLastAccessedTime())%>
		<br>

	</body>
</html>
