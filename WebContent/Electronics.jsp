<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.Date, java.util.*, java.io.*, java.text.*" %>

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
						<li class="active"><a href="Electronics.jsp">Electronics</a></li>
						<li><a href="TVs.jsp">TVs</a></li>
						<li><a href="Smartphones.jsp">Smartphones</a></li>
						<li><a href="Headphones.jsp">Headphones</a></li>
						<li><a href="Laptops.jsp">Laptops</a></li>
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
			
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- ASIDE -->
					<form name="form" onsubmit="true">
						<!-- ASIDE -->
						<div id="aside" class="col-md-3">
							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Brand</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-1" class="Brand" name="Brand" value="Lenevo">
										<label for="Brand-1">
											<span></span>
											Lenevo
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-2" class="Brand" name="Brand" value="Moto">
										<label for="Brand-2">
											<span></span>
											Moto
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-3" class="Brand" name="Brand" value="VIVO">
										<label for="Brand-3">
											<span></span>
											VIVO
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-4" class="Brand" name="Brand" value="Apple">
										<label for="Brand-4">
											<span></span>
											Apple
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-5" class="Brand" name="Brand" value="Infinix">
										<label for="Brand-5">
											<span></span>
											Infinix
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-6" class="Brand" name="Brand" value="Honor">
										<label for="Brand-6">
											<span></span>
											Honor
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-7" class="Brand" name="Brand" value="Google">
										<label for="Brand-7">
											<span></span>
											Google
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-8" class="Brand" name="Brand" value="Microsoft">
										<label for="Brand-8">
											<span></span>
											Microsoft
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->

							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Condition</h3>
								<div class="checkbox-filter">
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-1" class="Condition" name="Condition" value="New">
										<label for="Condition-1">
											<span></span>
											New
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-2" class="Condition" name="Condition" value="Open box">
										<label for="Condition-2">
											<span></span>
											Open box
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-3" class="Condition" name="Condition" value="Manufacturer refurbished">
										<label for="Condition-3">
											<span></span>
											Manufacturer refurbished
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-4" class="Condition" name="Condition" value="Seller refurbished">
										<label for="Condition-4">
											<span></span>
											Seller refurbished
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-5" class="Condition" name="Condition" value="Used">
										<label for="Condition-5">
											<span></span>
											Used
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-6" class="Condition" name="Condition" value="For parts or not working">
										<label for="Condition-6">
											<span></span>
											For parts or not working
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->


							<!-- aside Widget -->
							<div class="aside">
								<h3 class="aside-title">Color</h3>
								<div class="checkbox-filter">
									<div class="input-checkbox">
										<input type="checkbox" id="Color-1" class="Color" name="Color" value="Red">
										<label for="Color-1">
											<span></span>
											Red
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-2" class="Color" name="Color" value="Black">
										<label for="Color-2">
											<span></span>
											Black
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-3" class="Color" name="Color" value="Blue">
										<label for="Color-3">
											<span></span>
											Blue
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-4" class="Color" name="Color" value="Green">
										<label for="Color-4">
											<span></span>
											Green
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-5" class="Color" name="Color" value="White">
										<label for="Color-5">
											<span></span>
											White
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-6" class="Color" name="Color" value="Yellow">
										<label for="Color-6">
											<span></span>
											Yellow
										</label>
									</div>
								</div>
							</div>
							<!-- /aside Widget -->

							<div class="aside">
								<h3 class="aside-title">Year</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Year-1" class="Year" name="Year" value="2011">
										<label for="Year-1">
											<span></span>
											2011
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-2" class="Year" name="Year" value="2012">
										<label for="Year-2">
											<span></span>
											2012
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-3" class="Year" name="Year" value="2013">
										<label for="Year-3">
											<span></span>
											2013
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-4" class="Year" name="Year" value="2014">
										<label for="Year-4">
											<span></span>
											2014
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-5" class="Year" name="Year" value="2015">
										<label for="Year-5">
											<span></span>
											2015
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-6" class="Year" name="Year" value="2016">
										<label for="Year-6">
											<span></span>
											2016
										</label>
									</div>
								</div>
							</div>

							
							<p></br></br><input type="submit" value="apply"/></p>

						</div>
						<!-- /ASIDE -->

					</form>

					<!-- STORE -->
					<div id="store" class="col-md-9">
						<!-- store products -->
						<div class="row">
						<%	
						try{
							String brand = request.getParameter("Brand");
							String year = request.getParameter("Year");
							String color = request.getParameter("Color");
							String condition = request.getParameter("Condition");
							System.out.print(brand+year+color+condition);
							
							
							if (brand == null && year == null && color == null && condition == null){ 
								Class.forName("com.mysql.jdbc.Driver").newInstance();
							    
						    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

						    	if(con == null){
							    	response.sendRedirect("index.html");
							    	System.out.println("Connection Error");
						    	}

						    	Statement st = con.createStatement();
							    ResultSet rs;

								String query1 = "SELECT * FROM Electronics e, AFP a WHERE e.item_id = a.item_id";
								
								rs = st.executeQuery(query1);
								while (rs.next()){
								String closing = rs.getString("closingTime"); 
								DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								Date currentDate = new Date();
								Date closing_time = formatter.parse(closing);
								if (currentDate.after(closing_time)){

								} else {
								%>
								<!-- product -->
								<form name="submitForm" method="POST" action="bid_history.jsp">
								<div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-body"><a href="bid_history.jsp">
											<p class="product-category">Electronic</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-color"><% out.print(rs.getString("color")); %> </h4>
											<h5 class="product-price"><% out.print("Price: $" + rs.getString("price")); %> </h5>
											<h6 class="product-year"><% out.print("Year: " + rs.getString("year")); %> </h6>
											<h6 class="product-closing"><% out.print("Closing time: " + rs.getString("closingTime")); %> </h6>
											<form action="bid_histTory.jsp" method="post">
												<input type="hidden" name="item_id" value= "<%= rs.getString("item_id")%>">
											    <input type="submit" name="upvote" value="Bid History" />
											</form>
											<form action="product.jsp" method="post">
												<input type="hidden" name="item_id" value= "<%= rs.getString("item_id")%>">
											    <input type="submit" name="upvote" value="Bid" />
											</form>
										</div>
									</div>
								</div>
								<!-- /product -->
								<%}
								}
								rs.close();
								con.close();
			                    st.close();
							} else {

							Class.forName("com.mysql.jdbc.Driver").newInstance();
				    
					    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

					    	if(con == null){
						    	response.sendRedirect("index.html");
						    	System.out.println("Connection Error");
					    	}

					    	Statement st = con.createStatement();
						    ResultSet rs;

							String query1 = "SELECT * FROM Electronics e, AFP a WHERE e.item_id = a.item_id and ";

							if (brand != null){
								query1 = query1 + "brand = " + "'" + brand + "'";
								if (year != null){
									query1 = query1 + " AND year = " + "'" + year + "'";
									if (color != null){
										query1 = query1 + " AND color = " + "'" + color + "'";
										if (condition != null){
											query1 = query1 + " AND condition1 = " + "'" + condition + "'";
										}
									}
								}
							} else if (year != null){
									query1 = query1 + "year = " + "'" + year + "'";
									if (color != null){
										query1 = query1 + " AND color = " + "'" + color + "'";
										if (condition != null){
												query1 = query1 + " AND condition1 = " + "'" + condition + "'";
											}
									}
							} else if (color != null){
									query1 = query1 + "color = " + "'" + color + "'";
									if (condition != null){
										query1 = query1 + " AND condition1 = " + "'" + condition + "'";
									}
							} else if (condition != null){
								query1 = query1 + "condition1 = " + "'" + condition + "'";
							}
							
							if (query1 == "SELECT * FROM Electronics WHERE "){
								
							} else {
								rs = st.executeQuery(query1);
								
								while (rs.next()){
								String closing = rs.getString("closingTime"); 
								DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								Date currentDate = new Date();
								Date closing_time = formatter.parse(closing);
								if (currentDate.after(closing_time)){

								} else {
								%>
								<!-- product -->
								<form name="submitForm" method="POST" action="bid_history.jsp">
								<div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-body"><a href="bid_history.jsp">
											<p class="product-category">Electronic</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-color"><% out.print(rs.getString("color")); %> </h4>
											<h5 class="product-price"><% out.print("Price: $" + rs.getString("price")); %> </h5>
											<h6 class="product-year"><% out.print("Year: " + rs.getString("year")); %> </h6>
											<h6 class="product-closing"><% out.print("Closing time: " + rs.getString("closingTime")); %> </h6>
											<form action="bid_history.jsp" method="post">
												<input type="hidden" name="item_id" value= "<%= rs.getString("item_id")%>">
											    <input type="submit" name="upvote" value="Bid History" />
											</form>
											<form action="product.jsp" method="post">
												<input type="hidden" name="item_id" value= "<%= rs.getString("item_id")%>">
											    <input type="submit" name="upvote" value="Bid" />
											</form>
										</div>
									</div>
								</div>
								<!-- /product -->
								<%}
								}
								rs.close();
							}
		                    con.close();
		                    st.close();
						}
						} catch (Exception e) {
							System.out.println("exception");
							e.printStackTrace();
						}
								
								%>
						</div>
						<!-- /store products -->
					</div>
					<!-- /STORE -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		
		
		<!-- jQuery Plugins -->
		<script src="JS/jquery.min.js"></script>
		<script src="JS/bootstrap.min.js"></script>
		<script src="JS/slick.min.js"></script>
		<script src="JS/nouislider.min.js"></script>
		<script src="JS/jquery.zoom.min.js"></script>
		<script src="JS/main.js"></script>

		<!-- allow only one check box selected -->
		<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.3/jquery.min.js"></script>
		<script type="text/javascript">
    	$('.Brand').on('change', function(){
    		$('.Brand').not(this).prop('checked', false);
    	});

    	$('.Color').on('change', function(){
    		$('.Color').not(this).prop('checked', false);
    	});

    	$('.Year').on('change', function(){
    		$('.Year').not(this).prop('checked', false);
    	});

    	$('.Condition').on('change', function(){
    		$('.Condition').not(this).prop('checked', false);
    	});
    	</script>

	</body>
</html>
