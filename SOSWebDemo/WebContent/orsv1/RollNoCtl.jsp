

<%@page import="in.co.sunrays.advjava.dto.MarksheetDTO"%>
<%
	String rollNo = request.getParameter("rollNo");

	//Make jdbc collection
	//dto = MarksheetService.get(rollNo);
	//if (dto == null) {

	if (!rollNo.equals("123")) {
		request.setAttribute("error", "RollNo nahi mila");
%>

<jsp:forward page="RollNO.jsp"></jsp:forward>

<%
	}
	MarksheetDTO dto = new MarksheetDTO();
	dto.setRollNo(rollNo);
	dto.setName("MAhendra Singh Dhosni");
	dto.setMaths(90);
	dto.setChemistry(90);
	dto.setPhysics(90);

	request.setAttribute("marksheetDto", dto);
%>

<jsp:forward page="Marksheet.jsp"></jsp:forward>

