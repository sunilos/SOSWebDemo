<html>
	<body>
		<form action="servlet/UploadServlet" method="POST"
			enctype="multipart/form-data">

			<table border="1" cellspacing="1" bgcolor="yellow">
				<tr>
					<td colspan="2">
						<b>Sunrays Upload Image</b>
					</td>
				</tr>
				<tr>
					<td>
						Caption
					</td>
					<td>
						<input name="caption" size="20">
					</td>
				</tr>
				<tr>
					<td>
						Image
					</td>
					<td>
						<input name="fileName" type="file">
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<input type="submit" value="Upload">
					</td>
				</tr>

			</table>
		</form>

	</body>
</html>
