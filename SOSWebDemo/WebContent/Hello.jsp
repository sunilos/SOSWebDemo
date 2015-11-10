<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<!-- 
A JSP to print Hello 5 times.

@author SunilOS
@version 1.0
@Copyright (c) SunilOS 

-->

<BODY>

	<%
		for (int i = 0; i < 5; i++) {
	%>
		<H1><%=i + 1%>Hello JSP<H1>
	<%
		}
	%>
		
</BODY>
</HTML>
