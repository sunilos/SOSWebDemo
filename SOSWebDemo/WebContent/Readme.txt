**servlets
It contains sample servlet code 
Test URLs
	http://localhost:8080/ajkiapp/Circuit
	http://localhost:8080/ajkiapp/MunnaBhai
	http://localhost:8080/ajkiapp/mbbs
	http://localhost:8080/ajkiapp/abc.edu
	http://localhost:8080/ajkiapp/xyz.edu
	http://localhost:8080/ajkiapp/servlet/TestServletConfigScope
	
Filter Test
	http://localhost:8080/ajkiapp/servlet/HelloWorld
   	

**/login
It contains login and login error handling functionality. This functionality 
uses 
     1. forward tag, 
     2. request implicit object 
     3. include tag

**/error
It contains Error handling functionality. This functionality uses isErroPage 
attribute of page directive tag and exception implicit object

Use below URLs to test the functionality
  http://localhost:8080/ajkiapp/error/FormHandler.jsp?age=16  (Without Error)
  http://localhost:8080/ajkiapp/error/FormHandler.jsp?age=SWEET16 (With Error)
  
**/forward 
It contains an example of forward and request object scope with help of JSP and 
Servlet.  To test Servlet uncomment code in A.jsp

Use below URLs to test the functionality
  http://localhost:8080/ajkiapp/forward/A.jsp?param=sunRays


**/sendRedirect
It contains an example of sendredirect
 http://localhost:8080/ajkiapp/forward/A.jsp?param=sunRays
 
**/declarative
It contains eaxmple code for <%! Declarative Tag %>. That defines global attibues 
method.
 Test URL - http://localhost:8080/ajkiapp/declarative/Hello.html
 
**/scope
Contains example code to set objects in different scope and get it. It also contains JSPs
and Servlet to test config(ServletConfig) scope.

Test URLs
http://localhost:8080/ajkiapp/scope/SetScope.jsp
http://localhost:8080/ajkiapp/jsp/TestConfigJSP
http://localhost:8080/ajkiapp/servlet/TestServletConfigScope
  
**/Cookie 
Contains GET/SET Cookie samples
  
  