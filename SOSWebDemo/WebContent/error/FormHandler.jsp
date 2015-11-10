<%@ page errorPage="ExceptionHandler.jsp"%>

<html>
<!-- 

A program to check the error in JSP. Use URL 
 http://localhost:8080/ajkiapp/error/FormHandler.jsp?age=12
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
	<body>

		<%
			int age;
			age = Integer.parseInt(request.getParameter("age"));
		%>
		<p>
			Your age is : <%=age%> years.

		</p>
	</body>
</html>
