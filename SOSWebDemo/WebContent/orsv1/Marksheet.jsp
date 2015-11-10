<%@page import="in.co.sunrays.advjava.dto.MarksheetDTO"%>
<%@page import="java.util.ArrayList"%>
<html>
<body>

	<%
		//Check if user has logged in 
		String userID = (String) session.getAttribute("loginId");
		if (userID != null) {
			out.println("Welcome " + userID);
		} else {
			//If user is not logged in then forward back to Login.jsp 
			request.setAttribute("error",
					"Opps ! Your session has been expired");
	%>
	<jsp:forward page="Login.jsp"></jsp:forward>
	<%
		}

		MarksheetDTO dto = (MarksheetDTO) request
				.getAttribute("marksheetDto");
	%>
	Roll No :
	<%=dto.getRollNo()%>
	<BR> Name :
	<%=dto.getName()%>
	<br> Physics :
	<%=dto.getPhysics()%>
	<br> Maths :
	<%=dto.getMaths()%>
	<br> Chemistry :
	<%=dto.getChemistry()%>

	<%@ include file="Footer.jsp"%>
</body>
</html>
