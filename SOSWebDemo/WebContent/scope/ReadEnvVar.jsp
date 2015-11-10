<%@page import="javax.naming.Context"%>
<%@page import="javax.naming.InitialContext"%>
<HTML>

<!-- 
Reads data environment variables from web.xml those are defined as 

	<env-entry>
		<env-entry-name>organization</env-entry-name>
		<env-entry-type>java.lang.String</env-entry-type>
		<env-entry-value>
			NenoSystems Consulting Services
		</env-entry-value>
	</env-entry>

Use URL 
http://localhost:8080/ajkiapp/scope/ReadEnvVar.jsp 
to test it 

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 
 -->
	<BODY>
		<%
					Context env = (Context) new InitialContext()
					.lookup("java:comp/env");
			String value = (String) env.lookup("organization");
		%>
		<hr>
		<H3>
			Environment Variable "organization" value is
			<%=value%>
		</H3>

	</BODY>
</HTML>
