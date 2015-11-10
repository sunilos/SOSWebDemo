<html>
	<body>
	<% 
	String error = (String)request.getAttribute("error");
	if(error != null){
	   out.println("<font color='red'><B>"+ error +"</B></font>");
	}
	%>
		<form method="POST"  action="LoginCtl.jsp">
			User ID <input name="userId" type="text" size="20"><BR>
			Password <input name="password" type="password" size="20">
			<input type="submit" value="Go">
		</form>
	<%@ include file="Footer.jsp" %>
	</body>
</html>
