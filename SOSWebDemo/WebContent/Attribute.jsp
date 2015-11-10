<%@page import="java.util.Enumeration"%>

<html>
	<!-- 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

 -->
<head>
<title>Attribute</title>
</head>
<body>
 		<H2>Request Information</H2>
        Method: <%=request.getMethod()%><BR> 
        Protocol: <%=request.getProtocol()%><BR> 
        PathInfo: <%=request.getPathInfo()%> <BR>
        Remote Address: <%=request.getRemoteAddr()%><BR>
        
        <H2>Request Header Information</H2>
        <% 
        Enumeration e = request.getHeaderNames();
        while (e.hasMoreElements()) {
            String name = (String)e.nextElement();
            String value = request.getHeader(name);
            %>
            <B><%=name%></B> = <%=value %><BR>
            <%
        } 
        %>
        
        <H2>Request Parameter</H2>
        <% 
        e = request.getParameterNames();
        while (e.hasMoreElements()) {
            String name = (String)e.nextElement();
            String value = request.getParameter(name);
            %>
            <B><%=name%></B> = <%=value %><BR>
            <%
        } 
        %>        
        
        <H2>Request Attributes</H2>
        <% 
        e = request.getAttributeNames();
        while (e.hasMoreElements()) {
            String name = (String)e.nextElement();
            Object o = request.getAttribute(name);
            %>
            <B><%=name%></B> = <%=o%><BR>
            <%
        } 
        %>        

        <H2>Session Attributes</H2>
        <% 
        e = session.getAttributeNames();
        while (e.hasMoreElements()) {
            String name = (String)e.nextElement();
            Object o = session.getAttribute(name);
            %>
            <B><%=name%></B> = <%=o%><BR>
            <%
        } 
        %>        
        
   	</body>
</html>
