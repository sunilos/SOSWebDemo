<%@ page isErrorPage="true"%>
<html>
<!-- 

A program to check the error in JSP.

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
 
  <body>
     <h1>Error on your JSP Page!!! <%=exception.getMessage() %></h1><br>
     
     <% exception.printStackTrace();%>
  </body>
</html>
