<%@page import="in.co.sunrays.advjava.service.StudentServices"%>

<%@page import="java.util.ArrayList"%>

<%
String op = request.getParameter("operation");
if("Delete".equals(op)){
   String[] ids = request.getParameterValues("id");
   for(int i=0; ids!=null && i< ids.length; i++){
   	StudentServices.delete(ids[i]);
   }
}

ArrayList stdList = null;

if("Search".equals(op)){
  String fn = request.getParameter("fn");
   stdList = (ArrayList)StudentServices.getList(fn);
 
}else{
   stdList = (ArrayList)StudentServices.getList();
}
request.setAttribute("stdList",stdList);
%>

<jsp:forward page="StudentList.jsp" />
