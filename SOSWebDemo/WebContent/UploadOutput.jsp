<html>
	<body>
		<form action="servlet/UploadServlet" method="POST"
			enctype="multipart/form-data">

			<table border="1" cellspacing="1" bgcolor="yellow">
				<tr>
					<td colspan="2">
						<b>Congratulation !! Image is uploaded</b>
					</td>
				</tr>
				<tr>
					<td>
						Caption
					</td>
					<td>
						<%=request.getAttribute("caption")%>
					</td>
				</tr>
				<tr>
					<td colspan="2">
					<img src="<%=request.getContextPath()%>/uploadDocs/<%=request.getAttribute("iFile")%>">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<a href="<%=request.getContextPath()%>/UploadFile.jsp">Back</a>
					</td>
				</tr>

			</table>
		</form>

	</body>
</html>
