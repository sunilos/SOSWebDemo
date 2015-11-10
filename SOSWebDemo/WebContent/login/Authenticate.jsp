
<%
	String loginId = request.getParameter("id");
	String password = request.getParameter("password");

	if ("nenosystems".equals(loginId) && "nenosystems".equals(password)

	) {
	    session.setAttribute("userId",loginId);
%>

<jsp:forward page="MailList.jsp" />

<%
		} else {

		request.setAttribute("error", "true");
%>
<jsp:forward page="Login.jsp" />
<%
}
%>
