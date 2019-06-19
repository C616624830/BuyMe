<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css" href="CSS/loginstyle.css" />
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body style="margin: 0 !important; padding: 0 !important; height: 100%;">
<section class="container">
	<!-- <div class="LoginHead">Login Page</div> -->
	
	<form method="post" action="loginchecker.jsp">
			<p class="Welcome">Welcome back!</p>
		<div class="login">
			<p></p><h3 style="color: white;"><%
    		if(null!=request.getAttribute("errorMsg"))
    		{
        		out.println(request.getAttribute("errorMsg"));
    		}
    	%></h3>
			<p>User Name</p>
			<input type="text" name="login_name" placeholder="Enter Username">
			<p>Password</p>
			<input type="password" name="password" placeholder="Enter Password">
			<p><input type="submit" value="Login"></p>
			<p class="signUp">Not registered? <a href="signUp.jsp">Create an account!</a></p>
		</div>
	</form>
</section>
</body>
</html>