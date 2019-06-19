<%
session.invalidate();
//session.getAttribute("login_name");   //this will throw an error
response.sendRedirect("login.jsp");
 
%>
 