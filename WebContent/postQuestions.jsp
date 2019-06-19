<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Post Question</title>
<link rel="stylesheet" type="text/css" href="CSS/questions.css" />
</head>
<%@ include file="menu.jsp"%>
<body>
	<div class="content">
	<% if(request.getParameter("submit") !=null && 
	(request.getParameter("submit")).toString().equals("executed"))
	{ %> <p> Your question has been submitted! </p> <%}  %>
	<h1>Submit a new Question:</h1>
		  <p>	<%
    		if(null!=request.getAttribute("errorMsg"))
    		{
        		out.println(request.getAttribute("errorMsg"));
    		}
    	%>*350 character limit</p>
		<form action="manageQuestion.jsp" method="post">
		<textarea class="question" rows="1" cols="100" maxlength="350" id="Message" name="textAreaQuestion" placeholder="">
		</textarea>
		<br>
		<br>
		<input type="submit" value="Submit">	
		</form>
	</div>
</body>
</html>