
<HTML>

<BODY>

<H1>Mail List</H1>

<A HREF="Login.jsp">Logout</A>
<hr>
Welcome <%=session.getAttribute("userId") %>
<hr>

<TABLE  width="100%"  border="1">
<TR>
	<TD><B>From</B></TD>
	<TD><B>Subject</B></TD>
</TR>

<TR>
	<TD>From1</TD>
	<TD>Subject1</TD>
</TR>

<TR>
	<TD>From2</TD>
	<TD>Subject2</TD>
</TR>

</TABLE>

<%@ include file="Footer.jsp" %>

</BODY>
</HTML>
