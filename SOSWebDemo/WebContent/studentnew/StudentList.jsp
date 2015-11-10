<%@page import="in.co.sunrays.advjava.dto.StudentDTO"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<HTML>
<head>

<script language="javascript">
function checkAll(master){
var checked = master.checked;
var col = document.getElementsByTagName("INPUT");
for (var i=0;i<col.length;i++) {
col[i].checked= checked;
}
}
</script>
</head>
	<BODY>
		<h2><br></h2><h2><br></h2><h2>Student List</h2>

		<FORM METHOD=GET ACTION="StudentListCtl.jsp">
			<!-- FORM METHOD=GET ACTION="/ajkiapp/StudentMgtCtl" -->
			<table border="1" width="100%" >
				<tr >
				<td colspan="5">
				   <input type="text" name="fn">
				   <input type="submit" name="operation"
				   value="Search">
				   
				</td>
				</tr>
				<tr >
				    <th>
				    <input type="checkbox" 
				    onclick="checkAll(this)"
				    />
				    </th>
					<th>Roll No</th>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Session</th>
				</tr>
		<%
			StudentDTO std = null;
			ArrayList stdList = (ArrayList)request.getAttribute("stdList");
			Iterator it = stdList.iterator();
			while (it.hasNext()) {
				std = (StudentDTO) it.next();
		%>
				<tr>
				    <td>
				    <INPUT TYPE="checkbox" NAME="id" value="<%=std.getRollNo()%>">
				    </td>
					<td>
					<a href="StudentMgtCtl.jsp?rollNo=<%=std.getRollNo()%>&operation=Get">
						<%=std.getRollNo()%>
					</a>
					</td>
					<td><%=std.getFirstName()%></td>
					<td><%=std.getLastName()%></td>
					<td><%=std.getSession()%></td>
				</tr>
		<%
			}
		%>
			</table>
			<BR>
			<INPUT TYPE="submit" Value="Delete" name="operation">
		</FORM>
		<a href="StudentMgt.jsp">Add New Record</a>
	</BODY>
</HTML>
