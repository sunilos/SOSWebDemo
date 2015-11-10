<!-- 

A program to use Forward Tag.Use URL http://localhost:8080/ajkiapp/forward/A.jsp  to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
<%
System.out.println("This is A JSP " + request.getParameter("param"));
 request.setAttribute("A","Value Set By A");
 %>

<%-- Test forward through JSP --%>

<jsp:forward page="B.jsp"/>

<%-- Test forward through servlet --%>

<%-- jsp:forward page="/servlet/TestForward"/ --%>
