<%
System.out.println("This is A JSP " + request.getParameter("param"));
request.setAttribute("A","Value Set By A");
%>

<%
response.sendRedirect("C.jsp");
%>

