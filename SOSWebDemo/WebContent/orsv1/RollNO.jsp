<html>
	<body>
	
	<%
	
	 //Check if user has logged in 
	 String userID = (String)session.getAttribute("loginId");
	 if(userID != null){
	    out.println("Welcome " + userID);
	 }else{
	   //If user is not logged in then forward back to Login.jsp 
	   request.setAttribute("error", "Opps ! Your session has been expired");
	%>
	  <jsp:forward page="Login.jsp"></jsp:forward>
	<% 
	}
	
	
	String error = (String)request.getAttribute("error");
	if(error != null){
	   out.println("<font color='red'><B>"+ error +"</B></font>");
	}
	%>
		<form method="POST"  action="RollNoCtl.jsp" action1="/servlet/RollnoCtl">
			Roll No
			<input name="rollNo" type="text" size="20">
			<input type="submit" value="Go">
		</form>
	<%@ include file="Footer.jsp" %>
	</body>
</html>
