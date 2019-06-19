<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1"> 
<title>BuyMe</title>
<link rel="stylesheet" type="text/css" href="CSS/landingPage.css" />

<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
		<link type="text/css" rel="stylesheet" href="CSS/bootstrap.min.css"/>
		
 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="CSS/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="CSS/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="CSS/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="CSS/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="CSS/style.css"/>

 <script src="JS/landingPage.js"></script>
</head>
<%@ include file = "menu.jsp" %>
<body>
<section class="desc">
		<body> Hi <%=session.getAttribute("user")%>.</body>
</section>


	<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="landingPage.jsp">Home</a></li>
						<li><a href="Electronics.jsp">Electronics</a></li>
						<li><a href="TVs.jsp">TVs</a></li>
						<li><a href="Smartphones.jsp">Smartphones</a></li>
						<li><a href="Headphones.jsp">Headphones</a></li>
						<li><a href="Laptops.jsp">Laptops</a></li>
						<li><a href="auction_participate_in.jsp">View Auctions</a></li>		
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
	
</body>
</html>