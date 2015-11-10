<%@page import="in.co.sunrays.advjava.dto.MarksheetDTO"%>
<%@page import="java.util.*,java.lang.String"%>

<html>
	<body>
	
	<%
	 MarksheetDTO dto =  (MarksheetDTO)request.getAttribute("marksheetDto");
	 %>
		Roll No : <%=dto.getRollNo() %>
		<BR>
		Name : <%=dto.getName() %>
		<br>
		Physics : <%=dto.getPhysics() %>
		<br>
		Maths : <%=dto.getMaths() %>
		<br>
		Chemistry : <%=dto.getChemistry() %>
		
	<%@ include file="Footer.jsp" %>
	
	</body>
</html>
