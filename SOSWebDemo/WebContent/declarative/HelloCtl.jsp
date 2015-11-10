<HTML>

<!-- 

A program which receives Parameters from HTML to a JSP. Use URL 
http://localhost:8080/ajkiapp/declarative/HelloCtl.jsp
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
<BODY>
<%--Variable and method definition will copied in class (Or outside the _jspService method)
 --%>
<%! String globalVar = null; %>

<%! public void setValue(String val) {
	globalVar = val;
};%>

<%
//Code fragment written in the Scriptlet willbe copied in _jspService method

String methodLocalVar = request.getParameter("name")+ " " +request.getParameter("surname");

//Gloabl Variable can be used in _jspService method
setValue("A Train to Global Variable");

%>

<H1>Hello Local Variable <%=methodLocalVar%>  <H1>
<H1>Hello Global Variable <%=globalVar%>  <H1>

</BODY>
</HTML>
