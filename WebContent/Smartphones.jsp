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
						<li><a href="TVs.jsp">TVs</a></li>
						<li class="active"><a href="Smartphones.jsp">Smartphones</a></li>
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
								<h3 class="aside-title">Processor</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Processor-1" class="Processor" name="Processor" value="Single Core">
										<label for="Processor-1">
											<span></span>
											Single Core
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Processor-2" class="Processor" name="Processor" value="Dual Core">
										<label for="Processor-2">
											<span></span>
											Dual Core
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Processor-3" class="Processor" name="Processor" value="Quad Core">
										<label for="Processor-3">
											<span></span>
											Quad Core
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Processor-4" class="Processor" name="Processor" value="Hexa Core">
										<label for="Processor-4">
											<span></span>
											Hexa Core
											<small>(740)</small>
										</label>
									</div>

								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Storage Capacity</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Storage_Capacity-1" class="Storage_Capacity" name="Storage_Capacity" value="1 TB">
										<label for="Storage_Capacity-1">
											<span></span>
											1 TB
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Storage_Capacity-2" class="Storage_Capacity" name="Storage_Capacity" value="512 GB">
										<label for="Storage_Capacity-2">
											<span></span>
											512 GB
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Storage_Capacity-3" class="Storage_Capacity" name="Storage_Capacity" value="256 GB">
										<label for="Storage_Capacity-3">
											<span></span>
											256 GB
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Storage_Capacity-4" class="Storage_Capacity" name="Storage_Capacity" value="128 GB">
										<label for="Storage_Capacity-4">
											<span></span>
											128 GB
											<small>(740)</small>
										</label>
									</div>

								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Screen Size</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Screen_Size-1" class="Screen_Size" name="Screen_Size" value="Less than 4 in">
										<label for="Screen_Size-1">
											<span></span>
											Less than 4 in
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Screen_Size-2" class="Screen_Size" name="Screen_Size" value="4.0 - 4.4 in">
										<label for="Screen_Size-2">
											<span></span>
											4.0 - 4.4 in
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Screen_Size-3" class="Screen_Size" name="Screen_Size" value="4.5 - 4.9 in">
										<label for="Screen_Size-3">
											<span></span>
											4.5 - 4.9 in
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Screen_Size-4" class="Screen_Size" name="Screen_Size" value="5.0 - 5.4 in">
										<label for="Screen_Size-4">
											<span></span>
											5.0 - 5.4 in
											<small>(740)</small>
										</label>
									</div>

								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">Operating System</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="Operating_System-1" class="Operating_System" name="Operating_System" value="Android">
										<label for="Operating_System-1">
											<span></span>
											Android
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Operating_System-2" class="Operating_System" name="Operating_System" value="BlackBerry 10">
										<label for="Operating_System-2">
											<span></span>
											BlackBerry 10
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Operating_System-3" class="Operating_System" name="Operating_System" value="Linux">
										<label for="Operating_System-3">
											<span></span>
											Linux
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="Operating_System-4" class="Operating_System" name="Operating_System" value="iOS">
										<label for="Operating_System-4">
											<span></span>
											iOS
											<small>(740)</small>
										</label>
									</div>

								</div>
							</div>

							<div class="aside">
								<h3 class="aside-title">RAM</h3>
								<div class="checkbox-filter">

									<div class="input-checkbox">
										<input type="checkbox" id="RAM-1" class="RAM" name="RAM" value="4GB">
										<label for="RAM-1">
											<span></span>
											4GB
											<small>(120)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="RAM-2" class="RAM" name="RAM" value="8GB">
										<label for="RAM-2">
											<span></span>
											8GB
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="RAM-3" class="RAM" name="RAM" value="16GB">
										<label for="RAM-3">
											<span></span>
											16GB
											<small>(740)</small>
										</label>
									</div>

									<div class="input-checkbox">
										<input type="checkbox" id="RAM-4" class="RAM" name="RAM" value="32GB">
										<label for="RAM-4">
											<span></span>
											32GB
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
							String processor = request.getParameter("Processor");
							String storage_capacity = request.getParameter("Storage_Capacity");
							String screen_size = request.getParameter("Screen_Size");
							String operating_system = request.getParameter("Operating_System");
							String ram = request.getParameter("RAM");
							
							
							if (brand == null && year == null && color == null && condition == null && processor == null && storage_capacity == null && screen_size == null && operating_system == null && ram == null){ 
								Class.forName("com.mysql.jdbc.Driver").newInstance();
							    
						    	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");

						    	if(con == null){
							    	response.sendRedirect("index.html");
							    	System.out.println("Connection Error");
						    	}

						    	Statement st = con.createStatement();
							    ResultSet rs;

								String query1 = "SELECT * FROM Electronics_Smartphones s, Electronics e, AFP a where s.item_id = e.item_id and a.item_id = e.item_id";
								
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
											<p class="product-category">Smartphone</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-processor"><% out.print("Processor: " + rs.getString("processor")); %></a></h4>
											<h5 class="product-storage_capacity"><% out.print("Storage Capacity: " + rs.getString("storage_capacity")); %> </h5>
											<h6 class="product-screen_size"><% out.print("Screen Size: " + rs.getString("screen_size")); %> </h6>
											<h7 class="product-operating_system"><% out.print("Operating System: " + rs.getString("operating_system")); %> </h7>
											<h8 class="product-ram"><% out.print("RAM: " + rs.getString("ram")); %> </h8>
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

							String query1 = "SELECT * FROM Electronics_Smartphones s, Electronics e, AFP a where s.item_id = e.item_id and a.item_id = e.item_id AND ";

							if (brand != null){
								query1 = query1 + "brand = " + "'" + brand + "'";
								if (year != null){
									query1 = query1 + " AND year = " + "'" + year + "'";
									if (color != null){
										query1 = query1 + " AND color = " + "'" + color + "'";
										if (condition != null){
											query1 = query1 + " AND condition1 = " + "'" + condition + "'";
											if (processor != null){
												query1 = query1 + " AND processor = " + "'" + processor + "'";
												if (storage_capacity != null){
													query1 = query1 + " AND storage_capacity = " + "'" + storage_capacity + "'";
													if (screen_size != null){
														query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
														if (operating_system != null){
															query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
															if (ram != null){
																query1 = query1 + " AND ram = " + "'" + ram + "'";
															}
														}
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
										if (processor != null){
											query1 = query1 + " AND processor = " + "'" + processor + "'";
											if (storage_capacity != null){
												query1 = query1 + " AND storage_capacity = " + "'" + storage_capacity + "'";
												if (screen_size != null){
													query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
													if (operating_system != null){
														query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
														if (ram != null){
															query1 = query1 + " AND ram = " + "'" + ram + "'";
														}
													}
												}
											}
										}
									}
								}
							} else if (color != null){
								query1 = query1 + "color = " + "'" + color + "'";
								if (condition != null){
									query1 = query1 + " AND condition1 = " + "'" + condition + "'";
									if (processor != null){
										query1 = query1 + " AND processor = " + "'" + processor + "'";
										if (storage_capacity != null){
											query1 = query1 + " AND storage_capacity = " + "'" + storage_capacity + "'";
											if (screen_size != null){
												query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
												if (operating_system != null){
													query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
													if (ram != null){
														query1 = query1 + " AND ram = " + "'" + ram + "'";
													}
												}
											}
										}
									}
								}
							} else if (condition != null){
								query1 = query1 + "condition1 = " + "'" + condition + "'";
								if (processor != null){
									query1 = query1 + " AND processor = " + "'" + processor + "'";
									if (storage_capacity != null){
										query1 = query1 + " AND storage_capacity = " + "'" + storage_capacity + "'";
										if (screen_size != null){
											query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
											if (operating_system != null){
												query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
												if (ram != null){
													query1 = query1 + " AND ram = " + "'" + ram + "'";
												}
											}
										}
									}
								}
							} else if (processor != null){
								query1 = query1 + "processor = " + "'" + processor + "'";
								if (storage_capacity != null){
									query1 = query1 + " AND storage_capacity = " + "'" + storage_capacity + "'";
									if (screen_size != null){
										query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
										if (operating_system != null){
											query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
											if (ram != null){
												query1 = query1 + " AND ram = " + "'" + ram + "'";
											}
										}
									}
								}
							} else if (storage_capacity != null){
								query1 = query1 + "storage_capacity = " + "'" + storage_capacity + "'";
								if (screen_size != null){
									query1 = query1 + " AND screen_size = " + "'" + screen_size + "'";
									if (operating_system != null){
										query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
										if (ram != null){
											query1 = query1 + " AND ram = " + "'" + ram + "'";
										}
									}
								}
							} else if (screen_size != null){
								query1 = query1 + "screen_size = " + "'" + screen_size + "'";
								if (operating_system != null){
									query1 = query1 + " AND operating_system = " + "'" + operating_system + "'";
									if (ram != null){
										query1 = query1 + " AND ram = " + "'" + ram + "'";
									}
								}
							} else if (operating_system != null){
								query1 = query1 + "operating_system = " + "'" + operating_system + "'";
								if (ram != null){
									query1 = query1 + " AND ram = " + "'" + ram + "'";
								}
							} else if (ram != null){
								query1 = query1 + "ram = " + "'" + ram + "'";
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
											<p class="product-category">Smartphone</p>
											<h2 class="product-name"><a href="#"><% out.print(rs.getString("item_name")); %></a></h2>
											<h3 class="product-brand"><% out.print(rs.getString("brand")); %></a></h3>
											<h4 class="product-processor"><% out.print("Processor: " + rs.getString("processor")); %></a></h4>
											<h5 class="product-storage_capacity"><% out.print("Storage Capacity: " + rs.getString("storage_capacity")); %> </h5>
											<h6 class="product-screen_size"><% out.print("Screen Size: " + rs.getString("screen_size")); %> </h6>
											<h7 class="product-operating_system"><% out.print("Operating System: " + rs.getString("operating_system")); %> </h7>
											<h8 class="product-ram"><% out.print("RAM: " + rs.getString("ram")); %> </h8>
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

    	$('.Processor').on('change', function(){
    		$('.Processor').not(this).prop('checked', false);
    	});

    	$('.Storage_Capacity').on('change', function(){
    		$('.Storage_Capacity').not(this).prop('checked', false);
    	});

    	$('.Screen_Size').on('change', function(){
    		$('.Screen_Size').not(this).prop('checked', false);
    	});

    	$('.Operating_System').on('change', function(){
    		$('.Fit_Design').not(this).prop('checked', false);
    	});

       	$('.RAM').on('change', function(){
    		$('.RAM').not(this).prop('checked', false);
    	});

    	</script>

	</body>
</html>
