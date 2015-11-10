<%@page import="in.co.sunrays.advjava.dto.StudentDTO"%>
<HTML>
<BODY>
	<jsp:useBean id="std" class="in.co.sunrays.advjava.dto.StudentDTO"
		scope="request"></jsp:useBean>

	<%
		/*
		StudentDTO std =null;
		std = (StudentDTO)request.getAttribute("std");
		if(std == null){
		  std = new StudentDTO();
		  request.setAttribute("std", std);
		}
		 */
	%>

	<H2>Student Management</H2>

	<FORM METHOD=GET ACTION="StudentMgtCtl.jsp">
		<!-- FORM METHOD=GET ACTION="/ajkiapp/StudentMgtCtl" -->

		Roll No : <INPUT TYPE="text" NAME="rollNo"
			value="<%=std.getRollNo()%>"> <INPUT TYPE="submit"
			Value="Get" name="operation"> <BR> First Name : <INPUT
			TYPE="text" NAME="firstName"
			value="<jsp:getProperty name="std" 
			property="firstName"/>">
		<BR> Last Name: <INPUT TYPE="text" NAME="lastName"
			value="<jsp:getProperty name="std" property="lastName"/>">
		<BR> Session: <INPUT TYPE="text" NAME="session"
			value="<jsp:getProperty name="std" property="session"/>">
		<BR> <INPUT TYPE="submit" Value="Add" name="operation"> <INPUT
			TYPE="submit" Value="Delete" name="operation"> <INPUT
			TYPE="submit" Value="Modify" name="operation"> <a
			href="StudentListCtl.jsp">List</a>

	</FORM>
</BODY>
</HTML>
