<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>SUNRAYS JSP/Servlet Web Application Examples</title>
</head>
<body>

	<H1>SUNRAYS JSP/Servlet Web Application Examples</H1>

	<HR>
	<%
		String hostServer = request.getServerName();
		int serverPort = request.getServerPort();

		String contextPath = request.getContextPath();

		String URL = "http://" + hostServer + ":" + serverPort
				+ contextPath;
	%>

	<p>
		<B>contextPath</B>:
		<%=contextPath%>
	<p>
		<B>URL</B>:
		<%=URL%>
	<h2>Servlet Examples</h2>
	<OL>
		<LI><B>Hello Servlet</B>: Prints Hello World, <a
			href="<%=URL%>/servlet/HelloWorld"> <%=URL%>/servlet/HelloWorld
		</a>
		<LI><B>Akshay Kumar Servlet</B>: Prints a simple message, <a
			href="<%=URL%>/akki"> <%=URL%>/akki
		</a>
		<LI><B>Katrina Kaif Servlet</B>: Prints a simple message, <a
			href="<%=URL%>/kakki"> <%=URL%>/kakki
		</a>
		<LI><B>Katrina Kaif Servlet</B>: Maps Servlet with multiple URLs,
			<a href="<%=URL%>/SIK"> <%=URL%>/SIK
		</a> <BR> <code>
				One servlet is mapped with multiple URLs to provide <u>URL based
					security</u>
			</code>
		<LI><B>Wildcard Mapping ( *.khiladi will point to Akshay
				Kumar Servlet)</B>: <BR> <a href="<%=URL%>/international.khiladi"><%=URL%>/international.khiladi</a>
			<BR> <a href="<%=URL%>/SabseBada.khiladi"><%=URL%>/SabseBada.khiladi</a>
			<BR> <a href="<%=URL%>/786.khiladi"><%=URL%>/786.khiladi</a> <BR>
			<code>
				Wildcard mapping is used to provide <u>MAIN or FRONT Controller</u>
				in the Web Application
			</code>
	</OL>


	<h2>JSP Examples</h2>
	<OL>
		<LI><B>Hello JSP</B>: Prints Hello 5 times using Scriptlet and
			Expression tags, <a href="<%=URL%>/Hello.jsp"> <%=URL%>/Hello.jsp
		</a>
		<LI><B>Print Request Parameters </B>: Sending First Name and Last
			Name from query string, <a
			href="<%=URL%>/HelloName.jsp?fName=Vijay&lName=chauhan"> <%=URL%>/HelloName.jsp?fName=Vijay&lName=chauhan
		</a>
		<LI><B>HTML Form to send data to HelloName.jsp</B>: <a
			href="<%=URL%>/HelloForm.html"> <%=URL%>/HelloForm.html
		</a>
		<LI><B>HTML Form controls </B>: displays all input form fields<a
			href="<%=URL%>/SampleForm.html"> <%=URL%>/SampleForm.html
		</a>
	</OL>



	<h2>Handling Cookies</h2>
	<OL>
		<LI><B>Set Cookie </B>: Sets a Cookie, <a
			href="<%=URL%>/cookie/SetCookie.jsp"> <%=URL%>/cookie/SetCookie.jsp
		</a></LI>
		<LI><B>Get Cookies </B>: Sets a Cookie, <a
			href="<%=URL%>/cookie/GetCookie.jsp"> <%=URL%>/cookie/GetCookie.jsp
		</a></LI>
	
	</OL>




	<h2>Read Initial Configuration parameters</h2>
	<p>Some initial parameters can be set into Web.xml and read from a
		Servlet or JSP. Parameters are set by &lt;init-param &gt; tag inside
		&lt;servlet&gt; tag.</p>

	<OL>
		<LI><B>Read Initial Parameters from Servlet </B>: <a
			href="<%=URL%>/servlet/ReadInitParams"> <%=URL%>/servlet/ReadInitParams
		</a></LI>
		<LI><B>Read Initial Parameters from JSP </B>: <a
			href="<%=URL%>/jsp/ReadInitParams"> <%=URL%>/jsp/ReadInitParams
		</a></LI>
	</OL>



	<table border="1" width="100%">

		<tr>
			<td colspan=3><b>JSP Example</b></td>
		<tr>
		<tr>
			<td>1</td>
			<td>Print Hello JSP 5 times</td>
			<td>Print with help of Scriptlet and Expression tag <a
				href="http://localhost:8080/ajkiapp/Hello.jsp">http://localhost:8080/ajkiapp/Hello.jsp</a>
			</td>
		</tr>

		<tr>
			<td>2</td>
			<td>Print Hello name and surname given from the <strong>url</strong>
				on browser
			</td>
			<td>Print with help of Scriptlet and Expression tag <a
				href="http://localhost:8080/ajkiapp/HelloJsp.jsp?name=Vijay&surname=Chouhan">http://localhost:8080/ajkiapp/Hello.jsp?name=Vijay&surname=Chouhan</a>
			</td>
		</tr>


		<tr>
			<td>3</td>
			<td>Display First Name and Last name send by a HTML page to a
				JSP</td>
			<td>
				<p>"Hello Jsp- fName and lName" given from a HTML
					form(HelloNameForm.html) 5 times on the next Jsp(HelloName.jsp)</p>
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/HelloNameForm.html">http://localhost:8080/ajkiapp/HelloNameForm.html</a>
				</p>
			</td>
		</tr>

		<tr>
			<td>4</td>
			<td>Display a simple HTML form with all the HTML tags(textfield,
				buttons, checkbox etc.)</td>
			<td>Print with help of Scriptlet and Expression tag <a
				href="http://localhost:8080/ajkiapp/SampleForm.html">http://localhost:8080/ajkiapp/SampleForm.html</a>
			</td>
		</tr>

		<tr>
			<td>5</td>
			<td><strong>Upload</strong> A file a Servlet</td>
			<td>
				<p>Upload a file(with any extension) in a folder on server and
					also display it on the browser. Here in this example we have used
					UploadFile.jsp to upload a file and UploadOutput.jsp to display the
					output on browser</p>
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/UploadFile.jsp">http://localhost:8080/ajkiapp/UploadFile.jsp</a>
				</p>
			</td>
		</tr>

		<tr>
			<td>6</td>
			<td><strong>Set</strong> <strong>Cookies</strong> in
				key-value(name,value)pair given from the browser using SetCookie.jsp</td>
			<td>Print with help of Scriptlet and Expression tag <a
				href="http://localhost:8080/ajkiapp/cookie/SetCookie.jsp?name=city&value=indore">http://localhost:8080/ajkiapp/cookie/SetCookie.jsp?name=city&value=indore</a>
			</td>
		</tr>

		<tr>
			<td>7</td>
			<td><strong>Display Cookies</strong> values on browser set by
				the SetCookie.jsp</td>
			<td>Print with help of Scriptlet and Expression tag <a
				href="http://localhost:8080/ajkiapp/cookie/GetCookie.jsp">http://localhost:8080/ajkiapp/cookie/GetCookie.jsp</a>
			</td>
		</tr>
		-------
		<tr>
			<td>8</td>
			<td>Display name and surname send from one html form(Hello.html)
				on next jsp page(HelloCtrl.jsp) as Local variables. It also displays
				one global variable declared in declaration tag</td>
			<td>Print with help of declaration, Scriptlet and Expression tag
				<a href="http://localhost:8080/ajkiapp/declarative/Hello.html">http://localhost:8080/ajkiapp/declarative/Hello.html</a>
			</td>
		</tr>

		<tr>
			<td>9</td>
			<td>Display <strong>dynamic City list </strong>on selection of a
				State
			</td>
			<td>
				<p>This JSP has two list country and City. When you select
					country it displayes dynamic city list as per selected country.
					When country is changed in combo list, form is submitted to itself
					using 'onChange="getCity(this.form)"' event. Page reads submitted
					operation and country id. If operation is 'getCity' then city list
					is displayed as per 'country' parameter.</p>
				<p>
					Print with help of declaration, Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/dynalist/DynaList.jsp">http://localhost:8080/ajkiapp/dynalist/DynaList.jsp</a>
				</p>
			</td>
		</tr>

		<tr>
			<td>10</td>
			<td>Check the error in JSP</td>
			<td>This jsp(FormHandler.jsp) dispalys an error
				page(ExceptionHandler.jsp)with an error message in case any error
				occurs in it Print with help of declaration, Scriptlet and
				Expression tag <a
				href="http://localhost:8080/ajkiapp/error/FormHandler.jsp">http://localhost:8080/ajkiapp/error/FormHandler.jsp</a>
			</td>
		</tr>
		-
		<tr>
			<td>11</td>
			<td>forward request with attributes set in request to other jsp
				pages using jsp forward tag</td>
			<td>
				<p>This jsp(A.jsp)forwards request to B.jsp page with an
					attribute set in request which in turn forwards the same request to
					C.jsp page again setting one more attribute in request. C.jsp
					displays attributes set by A.jsp and B.jsp along with one more
					attribute("param") send from the url.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/forward/A.jsp">http://localhost:8080/ajkiapp/forward/A.jsp</a>
			</td>
		</tr>
		-----------
		<tr>
			<td>12</td>
			<td>Authenticate user and display MailList if user is valid else
				send the request back to Login.jsp page</td>
			<td>
				<p>Here we have a login form(Login.jsp). After submitting the
					form Authenticate.jsp page authenticate the valid user and displays
					Mail List(MailList.jsp) page. In case user is not valid request is
					sent back to the Login.jsp page. Footer.jsp page is included as
					footer in Login.jsp page.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/login/Login.jsp">http://localhost:8080/ajkiapp/login/Login.jsp</a>
			</td>
		</tr>

		<tr>
			<td>13</td>
			<td>Validate the rollno and display marksheet</td>
			<td><p>Here we have RollNO.jsp form.When we submit the form
					with a rollno, request goes to RollNoCtl.jsp which checks the
					validity of the rollno. If rollno is valid ,it forwards the request
					to Marksheet.jsp page and displays the marksheet .If rollno is not
					valid ,request goes back to RollNO.jsp page with an error message
					in red color. Footer.jsp page is inclded in RollNO.jsp and
					Marksheet.jsp page as footer of the page.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/onlineresult/RollNO.jsp">http://localhost:8080/ajkiapp/onlineresult/RollNO.jsp</a></td>
		</tr>

		<tr>
			<td>14</td>
			<td>First Validate the user's userid and password and then
				validate the rollno and display marksheet.</td>
			<td><p>Here we have Login.jsp. When we submit the form,
					request goes to LoginCtl.jsp which checks for the validity of the
					user. If the user is valid it forwards the request to RollNO.jsp
					page else request goes back to Login.jsp page with an error
					message. When RollNO. jsp page is submitted ,request goes to
					RollNoCtl.jsp page which checks for the validity of the rollno. If
					rollno is valid request forwards to Marksheet.jsp page else it goes
					back to RollNO.jsp page with an error message
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/orsv1/Login.jsp">http://localhost:8080/ajkiapp/orsv1/Login.jsp</a></td>
		</tr>

		<tr>
			<td>15</td>
			<td>set and get values from different scope</td>
			<td><p>There are four different variable scope levels-
					pageContext, session, application and request. SetScope.jsp is used
					to set values in different levels and GetScope.jsp is used to get
					values set in different scopes.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/scope/SetScope.jsp">http://localhost:8080/ajkiapp/scope/SetScope.jsp</a></td>
		</tr>

		<tr>
			<td>16</td>
			<td>Use of sendRedirect method</td>
			<td><p>When request is sent using sendRedirect method,
					always a new request is generated from the specified page and any
					attributes set in any scope in previous pages are not displayed on
					the specified page.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/sendRedirect/A.jsp">http://localhost:8080/ajkiapp/sendRedirect/A.jsp</a></td>
		</tr>

		<tr>
			<td>17</td>
			<td>Set and get session attributes</td>
			<td><p>Here we have SetSession.jsp in which values are set
					in session object in key-value pair. GetSession.jsp is used to get
					the value back set in session. To get the values back set in
					session we only need the specified key of the value.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/session/SetSession.jsp?key=city&value=indore"">http://localhost:8080/ajkiapp/session/SetSession.jsp?key=city&value=indore</a></td>
		</tr>

		<tr>
			<td>18</td>
			<td>Add ,Modify and Delete Student information in database named
				test</td>
			<td><p>Here we have StudentMgt.html form to fill student
					information. On this page we have three Add, Modify AND Delete
					submit Buttons. When we click the ADD button request goes to
					StudentMgtCtl.jsp where filled student info is recieved using
					request.getParameter() method. This info is then set in StudentDTO
					object and a call is made to add(StudentDTO dto) method of
					StudentService class, which in turn interect with database and
					store the student information in database. We can also use the
					useBean tag to get all values of student form in StudentDTO in one
					go. With useBean tag setProperty and getProperty jsp tags are used.
					According to the clicked submit buttons different methods of
					StudentService class are called.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/student/StudentMgt.html">http://localhost:8080/ajkiapp/student/StudentMgt.html</a></td>
		</tr>

		<tr>
			<td>19</td>
			<td>Add ,Modify, Delete and Get Student information from
				database named test</td>
			<td><p>Here we have StudentMgt.jsp form to fill student
					information. On this page we have four Add, Modify AND Delete and
					Get submit Buttons. When we click any button, request goes to
					StudentMgtCtl.jsp where filled student info is recieved using jsp
					useBean tag to set all the student info in StudentDTO object. Then
					it is checked that which opeartion(Add, Modify,Delete or Get) is
					called. According to the called opeartion different methods of
					StudentService class are called and respective operation is
					performed.
				<p>
					Print with help of Scriptlet and Expression tag <a
						href="http://localhost:8080/ajkiapp/studentnew/StudentMgt.jsp">http://localhost:8080/ajkiapp/studentnew/StudentMgt.jsp</a></td>
		</tr>
	</table>
</body>
</html>