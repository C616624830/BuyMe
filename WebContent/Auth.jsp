<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" type="text/css" href="CSS/index.css" />
</head>
<body style="margin: 0 !important; padding: 0;">
	<div style="text-align: center; margin-top: 150px;">
		
		<%
		if ((session.getAttribute("user") == null)) {
		%>
		Thanks for creating an Account<br /> <a href="login.jsp">Please
			Login</a>
		<%
		} 
		
		else if ((session.getAttribute("user").equals("admin"))) {
		%>
		Welcome
		<%=session.getAttribute("user")%>
		<br> Successful Login! <br> Redirecting to main page ....
		<meta http-equiv="Refresh" content="4;url=main.jsp">
		<%
		} 
		
		else {
		%>
		Welcome
		<%=session.getAttribute("user")%>
		<br> Successful Login! <br> Redirecting to main page ....
		<meta http-equiv="Refresh" content="4;url=landingPage.jsp">
		<%
			}
		%>

	</div>
</body>
</html>

