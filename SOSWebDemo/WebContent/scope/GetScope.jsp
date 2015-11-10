<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<html>
<!-- 

A program to get scope of jsp from a broswer. Use URL 
http://localhost:8080/ajkiapp/scope/GetScope.jsp
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
  <body>
    This is GetScope JSP page. <br>
    Session ID = <%=session.getId() %><br>
    Session Created Date = <%=new Date(session.getCreationTime()) %><br>
    Pager Context value = <%= pageContext.getAttribute("pc")%><br>
    Session value = <%= session.getAttribute("s")%><br>    
    application value = <%= application.getAttribute("a")%><br>    
    request value = <%= request.getAttribute("r")%><br>    
           
  </body>
</html>
