<%
System.out.println("This is B JSP " + request.getParameter("param"));
request.setAttribute("B","Value Set By B");
%>
<jsp:forward page="C.jsp"></jsp:forward>