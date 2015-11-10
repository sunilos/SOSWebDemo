<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
	<HEAD>
		<TITLE>New Document</TITLE>
		<META NAME="Generator" CONTENT="EditPlus">
		<META NAME="Author" CONTENT="">
		<META NAME="Keywords" CONTENT="">
		<META NAME="Description" CONTENT="">
	</HEAD>

	<BODY>
		<H1>
			Login Page
		</H1>
		<hr>

		<%
			String flag = (String) request.getAttribute("error");

			if ("true".equals(flag)) {
		%>
		<FONT SIZE="" COLOR="red">Login ID/Password incorrect</FONT>
		<%
			}
		%>

		<br>


		<FORM METHOD=POST ACTION="Authenticate.jsp">
			Login ID
			<INPUT TYPE="text" NAME="id">
			<br>
			Password
			<INPUT TYPE="password" NAME="password">
			<INPUT TYPE="submit" value="Go">

		</FORM>

		<%@ include file="Footer.jsp"%>

	</BODY>
</HTML>
