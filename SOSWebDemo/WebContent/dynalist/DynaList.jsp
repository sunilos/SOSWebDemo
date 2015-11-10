<%@page import="java.util.HashMap"%>
<%@page import="java.util.Iterator"%>

<!-- 
This JSP has two list country and City. When you select country it displayes dynamic city list as per selected country.

When country is changed in conbo list, form is submitted to itself using 'onChange="getCity(this.form)"' event.

Page reads submitted operation and country id. If operation is 'getCity' then city list is displayed as per 'country' parameter.

-->


<HTML>

<SCRIPT LANGUAGE="JavaScript">
<!--
function getCity(frm){
    frm.operation.value='getCity'; 
	frm.submit();
}

function doSubmit(frm){
    frm.operation.value='Add'; 
	frm.submit();
}
//-->
</SCRIPT>

<BODY>

<FORM METHOD=Get ACTION="DynaList.jsp">

	<INPUT TYPE="hidden" name="operation">
	<H2>Select Country and see dynamic generated city list</H2>

	<B>country:</B>
	<SELECT NAME="country" onChange="getCity(this.form)">
		<option value=0></Option>
		<option value=1>India</Option>
		<option value=2>China</Option>
	</SELECT><BR>

	<B>City : </B> 

	<SELECT NAME="city">
	<%
	HashMap india = new HashMap();
	india.put("1","Mumbai");
	india.put("2","Dehli");

	HashMap china = new HashMap();
	china.put("1","Sanghai");
	china.put("2","Bijiing");

	String op = request.getParameter("operation");
	if("getCity".equals(op)){
	String cId = request.getParameter("country");

	HashMap city = null;
	if("1".equals(cId)){
	   city = india;
	}
	else{
		city = china;
	}   

	Iterator it = city.keySet().iterator();
	String key, value;
	while(it.hasNext())
	{
		key = (String)it.next();
		value = (String)city.get(key);
	%>

		<option value=<%=key%> > <%=value%></Option>
	<%
	}
	}
	%>
	</SELECT><BR>

	<INPUT TYPE="button" value="Add" onClick="doSubmit(this.form)">

</FORM>

</BODY>
</HTML>
