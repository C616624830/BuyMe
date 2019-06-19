<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="CSS/admin.css" />
<!-- Load Font Awesome Icon Library -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script type="text/javascript" src="JS/table.js"></script>
</head>
<%@ include file = "menu.jsp" %>
<body>

<div class="desc">
	<b style="font-size: 25px;">Welcome Admin</b>
	<hr>
	<br>
	<body>This page is for admin view only. 
		  	
	</body>
</div>

<!-- Buttons to choose list or grid view -->
<button class="tableBtn" onclick="listView()"><i class="fa fa-bars"></i> List</button> 
<button class="tableBtn" onclick="gridView()"><i class="fa fa-th-large"></i> Grid</button> 
<div class="row">
	<div class="column">
		<span>Creates accounts for customer representatives</span>
		<p></p>
		<br>
		<a href="CreateCustomerRep.jsp"><button>Here</button> </a>
	</div>
	<div class="column">
		<span>Generates sales reports</span>
		<p>
		<br> </p>
		<a href="generateSaleReports.jsp"> <button> Here </button></a> 
	</div>
	<div class="column">
		<span>View All Accounts</span>
		<p>  
		</p>
		 <a href="listUsers.jsp"> <button>Here </button> </a> 
		
	</div>
</div>
	
</body>
</html>