<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.*, java.io.*" %>

<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>BuyMe</title>

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

		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
		<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

    </head>
    <%@ include file = "menu.jsp" %>
	<body>
	
		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li><a href="Electronics.jsp">Electronics</a></li>
						<li><a href="TVs.jsp">TVs</a></li>
						<li><a href="Smartphones.jsp">Smartphones</a></li>
						<li><a href="Headphones.jsp">Headphones</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->

		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<%
		String itemid = request.getParameter("item_id");
		String driverName = "com.mysql.jdbc.Driver";
		String email = request.getParameter("email");
		String connectionURL = "jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/";
		String dbName = "BuyMe";
		String root = "BuyMeAdmin";
		String password = "RutgersCS336";
		try { 
			Class.forName(driverName); 
			} catch (ClassNotFoundException e){
			e.printStackTrace();
		 } 
 
		 Connection connection = null; 
		 Statement statement = null; 
		 ResultSet resultSet = null;

		 System.out.println("item_id_product: " + itemid);

		 try {	
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();

				System.out.println("here1");

				String sql = "SELECT * FROM AFP where item_id = " + "'" + itemid + "'";

				resultSet = statement.executeQuery(sql);

				System.out.println("here2");
				if (resultSet.next()){

					String current_highest_bid = resultSet.getString("current_highest_bid");
					String account_id = resultSet.getString("account_id");
					String auction_id = resultSet.getString("auction_id");
					session.setAttribute("account_id",account_id);
					session.setAttribute("auction_id",auction_id); 
					
					System.out.println("account_id1: " + account_id);
					System.out.println("current_highest_bid: " + current_highest_bid);
					System.out.println("auction_id: " + auction_id);
					
					if (current_highest_bid == null){current_highest_bid="0";}

					System.out.println("item_id_product: " + itemid);
					%>

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Place Bid</h3>
							</div>
							<div class="form-group">
								<h3 class="title">Current Highest Bid: <% out.print(current_highest_bid); %></h3>
							</div>

							<form action="bid_checker.jsp" method="post">
								<div class="form-group">
									<input class="input" type="bid amount" name="bid amount" placeholder="Bid Amount">
								</div>
								<%
						    		if(null!=request.getAttribute("errorMsg"))
						    		{
						        		out.println(request.getAttribute("errorMsg"));
						    		}
								%>
								<input type="submit" value="place Bid" />
								<input type="hidden" name="item_id" value= "<%= itemid%>">
								<input type="hidden" name="current_highest_bid" value= "<%= current_highest_bid%>">
							</form>

						</div>
						<!-- /Billing Details -->

					</div>

					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<%} else {%>

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-7">
						<!-- Billing Details -->
						<div class="billing-details">
							<div class="section-title">
								<h3 class="title">Item Not Available</h3>
							</div>

						</div>
						<!-- /Billing Details -->

					</div>

					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<%}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>

		

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
