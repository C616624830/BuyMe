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
						<li><a href="Electronics.jsp">Electronics</a></li>
						<li class="active"><a href="TVs.jsp">TVs</a></li>
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
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-2" class="Brand" name="Brand" value="Moto">
										<label for="Brand-2">
											<span></span>
											Moto
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-3" class="Brand" name="Brand" value="VIVO">
										<label for="Brand-3">
											<span></span>
											VIVO
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-4" class="Brand" name="Brand" value="Apple">
										<label for="Brand-4">
											<span></span>
											Apple
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-5" class="Brand" name="Brand" value="Infinix">
										<label for="Brand-5">
											<span></span>
											Infinix
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Brand-6" class="Brand" name="Brand" value="Honor">
										<label for="Brand-6">
											<span></span>
											Honor
											<small>(740)</small>
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
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-2" class="Condition" name="Condition" value="Open box">
										<label for="Condition-2">
											<span></span>
											Open box
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-3" class="Condition" name="Condition" value="Manufacturer refurbished">
										<label for="Condition-3">
											<span></span>
											Manufacturer refurbished
											<small>(755)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-4" class="Condition" name="Condition" value="Seller refurbished">
										<label for="Condition-4">
											<span></span>
											Seller refurbished
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-5" class="Condition" name="Condition" value="Used">
										<label for="Condition-5">
											<span></span>
											Used
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Condition-6" class="Condition" name="Condition" value="For parts or not working">
										<label for="Condition-6">
											<span></span>
											For parts or not working
											<small>(755)</small>
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
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-2" class="Color" name="Color" value="Black">
										<label for="Color-2">
											<span></span>
											Black
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-3" class="Color" name="Color" value="Blue">
										<label for="Color-3">
											<span></span>
											Blue
											<small>(755)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-4" class="Color" name="Color" value="Green">
										<label for="Color-4">
											<span></span>
											Green
											<small>(578)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-5" class="Color" name="Color" value="White">
										<label for="Color-5">
											<span></span>
											White
											<small>(125)</small>
										</label>
									</div>
									<div class="input-checkbox">
										<input type="checkbox" id="Color-6" class="Color" name="Color" value="Yellow">
										<label for="Color-6">
											<span></span>
											Yellow
											<small>(755)</small>
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
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-2" class="Year" name="Year" value="2012">
										<label for="Year-2">
											<span></span>
											2012
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-3" class="Year" name="Year" value="2013">
										<label for="Year-3">
											<span></span>
											2013
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-4" class="Year" name="Year" value="2014">
										<label for="Year-4">
											<span></span>
											2014
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-5" class="Year" name="Year" value="2015">
										<label for="Year-5">
											<span></span>
											2015
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Year-6" class="Year" name="Year" value="2016">
										<label for="Year-6">
											<span></span>
											2016
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Refresh Rate</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-1" class="Refresh_Rate" name="Refresh_Rate" value="50 Hz">
										<label for="Refresh_Rate-1">
											<span></span>
											50 Hz
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-2" class="Refresh_Rate" name="Refresh_Rate" value="60 Hz">
										<label for="Refresh_Rate-2">
											<span></span>
											60 Hz
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-3" class="Refresh_Rate" name="Refresh_Rate" value="100 Hz">
										<label for="Refresh_Rate-3">
											<span></span>
											100 Hz
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-4" class="Refresh_Rate" name="Refresh_Rate" value="120 Hz">
										<label for="Refresh_Rate-4">
											<span></span>
											120 Hz
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-5" class="Refresh_Rate" name="Refresh_Rate" value="200 Hz">
										<label for="Refresh_Rate-5">
											<span></span>
											200 Hz
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Refresh_Rate-6" class="Refresh_Rate" name="Refresh_Rate" value="240 Hz">
										<label for="Refresh_Rate-6">
											<span></span>
											240 Hz
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Display Technology</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-1" class="Display_Technology" name="Display_Technology" value="CRT">
										<label for="Display_Technology-1">
											<span></span>
											CRT
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-2" class="Display_Technology" name="Display_Technology" value="LED LCD">
										<label for="Display_Technology-2">
											<span></span>
											LED LCD
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-3" class="Display_Technology" name="Display_Technology" value="Direct LED">
										<label for="Display_Technology-3">
											<span></span>
											Direct LED
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-4" class="Display_Technology" name="Display_Technology" value="DLP">
										<label for="Display_Technology-4">
											<span></span>
											DLP
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-5" class="Display_Technology" name="Display_Technology" value="Edge-lit LED">
										<label for="Display_Technology-5">
											<span></span>
											Edge-lit LED
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Display_Technology-6" class="Display_Technology" name="Display_Technology" value="LCD">
										<label for="Display_Technology-6">
											<span></span>
											LCD
											<small>(740)</small>
										</label>
									</div>
								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Max Resolution</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-1" class="Max_Resolution" name="Max_Resolution" value="4320p (8K)">
										<label for="Max_Resolution-1">
											<span></span>
											4320p (8K)
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-2" class="Max_Resolution" name="Max_Resolution" value="4320p">
										<label for="Max_Resolution-2">
											<span></span>
											4320p
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-3" class="Max_Resolution" name="Max_Resolution" value="2160p (4K)">
										<label for="Max_Resolution-3">
											<span></span>
											2160p (4K)
											<small>(1450)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-4" class="Max_Resolution" name="Max_Resolution" value="1080p">
										<label for="Max_Resolution-4">
											<span></span>
											1080p
											<small>(578)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-5" class="Max_Resolution" name="Max_Resolution" value="1080i">
										<label for="Max_Resolution-5">
											<span></span>
											1080i
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Max_Resolution-6" class="Max_Resolution" name="Max_Resolution" value="768p">
										<label for="Max_Resolution-6">
											<span></span>
											768p
											<small>(740)</small>
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
							String refresh_rate = request.getParameter("Refresh_Rate");
							String display_technology = request.getParameter("Display_Technology");
							String max_resolution = request.getParameter("Max_Resolution");
							
							
							if (brand == null && year == null && color == null && condition == null && refresh_rate == null && display_technology == null && max_resolution == null){ 
								Class.forName("com.mysql.jdbc.Driver").newInstance();
							    
						    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

						    	if(con == null){
							    	response.sendRedirect("index.html");
							    	System.out.println("Connection Error");
						    	}

						    	Statement st = con.createStatement();
							    ResultSet rs;

								String query1 = "SELECT * FROM Electronics_TV t, Electronics e, AFP a where t.item_id = e.item_id and a.item_id = e.item_id";
								
								rs = st.executeQuery(query1);

								while (rs.next()){ 
								String closing = rs.getString("closingTime"); 
								DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
								Date currentDate = new Date();
								Date closing_time = formatter.parse(closing);
								if (currentDate.after(closing_time)){

								} else {%>
								<!-- product -->
								<div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-body">
											<p class="product-category">TV</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-refresh_rate"><% out.print("Refresh Rate: " + rs.getString("refresh_rate")); %></a></h4>
											<h5 class="product-display_technology"><% out.print("Display Technology: " + rs.getString("display_technology")); %> </h5>
											<h6 class="product-max_resolution"><% out.print("Max Resolution: " + rs.getString("max_resolution")); %> </h6>
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

							String query1 = "SELECT * FROM Electronics_TV t, Electronics e, AFP a where t.item_id = e.item_id and a.item_id = e.item_id AND ";

							if (brand != null){
								query1 = query1 + "brand = " + "'" + brand + "'";
								if (year != null){
									query1 = query1 + " AND year = " + "'" + year + "'";
									if (color != null){
										query1 = query1 + " AND color = " + "'" + color + "'";
										if (condition != null){
											query1 = query1 + " AND condition1 = " + "'" + condition + "'";
											if (refresh_rate != null){
												query1 = query1 + " AND refresh_rate = " + "'" + refresh_rate + "'";
												if (display_technology != null){
													query1 = query1 + " AND display_technology = " + "'" + display_technology + "'";
													if (max_resolution != null){
														query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
													}
												}
											}
										}
									}
								}
							} else if (year != null){
								query1 = query1 + "year = " + "'" + year + "'";
								if (color != null){
									query1 = query1 + " AND color = " + "'" + color + "'";
									if (condition != null){
										query1 = query1 + " AND condition1 = " + "'" + condition + "'";
										if (refresh_rate != null){
											query1 = query1 + " AND refresh_rate = " + "'" + refresh_rate + "'";
											if (display_technology != null){
												query1 = query1 + " AND display_technology = " + "'" + display_technology + "'";
												if (max_resolution != null){
													query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
												}
											}
										}
									}
								}
							} else if (color != null){
								query1 = query1 + "color = " + "'" + color + "'";
								if (condition != null){
									query1 = query1 + " AND condition1 = " + "'" + condition + "'";
									if (refresh_rate != null){
										query1 = query1 + " AND refresh_rate = " + "'" + refresh_rate + "'";
										if (display_technology != null){
											query1 = query1 + " AND display_technology = " + "'" + display_technology + "'";
											if (max_resolution != null){
												query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
											}
										}
									}
								}
							} else if (condition != null){
								query1 = query1 + "condition1 = " + "'" + condition + "'";
								if (refresh_rate != null){
									query1 = query1 + " AND refresh_rate = " + "'" + refresh_rate + "'";
									if (display_technology != null){
										query1 = query1 + " AND display_technology = " + "'" + display_technology + "'";
										if (max_resolution != null){
											query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
										}
									}
								}
							} else if (refresh_rate != null){
								query1 = query1 + "refresh_rate = " + "'" + refresh_rate + "'";
								if (display_technology != null){
									query1 = query1 + " AND display_technology = " + "'" + display_technology + "'";
									if (max_resolution != null){
										query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
									}
								}
							} else if (display_technology != null){
								query1 = query1 + "display_technology = " + "'" + display_technology + "'";
								if (max_resolution != null){
									query1 = query1 + " AND max_resolution = " + "'" + max_resolution + "'";
								}
							} else if (max_resolution != null){
								query1 = query1 + "max_resolution = " + "'" + max_resolution + "'";
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

								} else {%>
								<!-- product -->
								<div class="col-md-4 col-xs-6">
									<div class="product">
										<div class="product-body">
											<p class="product-category">TV</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-refresh_rate"><% out.print("Refresh Rate: " + rs.getString("refresh_rate")); %></a></h4>
											<h5 class="product-display_technology"><% out.print("Display Technology: " + rs.getString("display_technology")); %> </h5>
											<h6 class="product-max_resolution"><% out.print("Max Resolution: " + rs.getString("max_resolution")); %> </h6>
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

    	$('.Refresh_Rate').on('change', function(){
    		$('.Refresh_Rate').not(this).prop('checked', false);
    	});

    	$('.Display_Technology').on('change', function(){
    		$('.Display_Technology').not(this).prop('checked', false);
    	});

    	$('.Max_Resolution').on('change', function(){
    		$('.Max_Resolution').not(this).prop('checked', false);
    	});
    	</script>

	</body>
</html>
