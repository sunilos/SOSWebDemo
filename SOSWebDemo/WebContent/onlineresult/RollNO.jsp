<html>
	<body>

	<% 
	String error = (String)request.getAttribute("error");
	if(error != null){
	   //out.println("<font color='red'><B>"+ error +"</B></font>");
	%>
	<font color='red'><B><%=error %></B></font>
	<%
	}
	%>
	
	
		<!-- form method="POST"  action="servlet/RollnoCtl" -->
		<form method="GET"  action="RollNoCtl.jsp">
			Roll No
			<input name="rollNo" type="text" size="40" value="Enter Roll No.">
			<input name="operation" type="submit" value="Go">
		</form>
		
	<%@ include file="Footer.jsp" %>
	
	</body>
</html>
