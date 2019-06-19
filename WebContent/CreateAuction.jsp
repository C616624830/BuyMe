<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Create Auction</title>
	<%@ include file = "menu.jsp" %>
	
	<link rel="stylesheet" type="text/css" href="CSS/landingPage.css" />	 
	<script src="JS/landingPage.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>	
	<script type="text/javascript" src="createAuction.js"></script>
	

</head>


<body>
	<section class="desc">
		<body> Hi <%=session.getAttribute("user")%>.</body>
	</section>

	<section class="listContainer">
		<div class="attributes">
			<span>New Auction</span>
		</div>
	</section>
	
	<%
    		if(null!=request.getAttribute("errorMsg"))
    		{
        		out.println(request.getAttribute("errorMsg"));
    		}
    	%>
	<br>
	<p> </p>
	Item Type: 
	<select id="selectType"> 
	  <option id="selectoption" value="selectoption">--- Please select ---</option>
	  <option id="smartphone" value="smartphone">Smartphone</option>
	  <option id="tv" value="tv">TV</option>
	  <option id="laptop" value="laptop">Laptop</option>
	  <option id="headphones" value="headphones">Headphones</option>
	</select>

	<form id="SmartPhoneInfo" method="post" action="enterAuctionSmartPhone.jsp"> 
		<p></p>
		Processor: 
		<select name="processorSmartphone">
		  <option value="Single Core">Single Core</option>
		  <option value="Dual Core">Dual Core</option>
		  <option value="Quad Core">Quad Core</option>
		  <option value="Hexa Core">Hexa Core</option>
		</select>
		<p></p>
		Storage Capacity: 
		<select name="storageCapacitySmartphone">
		  <option value="1 TB">1 TB</option>
		  <option value="512 GB">512 GB</option>
		  <option value="256 GB">256 GB</option>
		  <option value="128 GB">128 GB</option>
		</select>
		<p></p>
		Screen Size: 
		<select name="screenSizeSmartphone">
		  <option value="Less than 4 in">Less than 4 in</option>
		  <option value="4.0 - 4.4 in">4.0 - 4.4 in</option>
		  <option value="4.5 - 4.9 in">4.5 - 4.9 in</option>
		  <option value="5.0 - 5.4 in">5.0 - 5.4 in</option>
		</select>
		<p></p> 
		Operating System: 
		<select name="operatingSystemSmartphone">
		  <option value="Android">Android</option>
		  <option value="BlackBerry 10">BlackBerry 10</option>
		  <option value="Linux">Linux</option>
		  <option value="iOS">iOS</option>
		</select>
		<p></p>
		RAM: 
		<select name="RAMItemSmartphone">
		  <option value="4GB">4GB</option>
		  <option value="8GB">8GB</option>
		  <option value="16GB">16GB</option>
		  <option value="32GB">32GB</option>
		</select>
		<p> </p>
		Item Name: 
		<input type="text" name="itemNameSmartphone" placeholder="Name" required><br>
		<p></p>
		Brand:  
		<select name="brandNameSmartphone">
		  <option value="Lenovo">Lenovo</option>
		  <option value="Moto">Moto</option>
		  <option value="VIVO">VIVO</option>
		  <option value="Apple">Apple</option>
		  <option value="Infinix">Infinix</option>
		  <option value="Honor">Honor</option> 
		</select>
		<br>
		<p></p>
		Condition:  
		<select name="conditionOfSmartPhone">
		  <option value="New">New</option>
		  <option value="Open Box">Open Box</option>
		  <option value="Manufacturer refurbished">Manufacturer refurbished</option>
		  <option value="Seller Refurbished">Seller refurbished</option>
		  <option value="Used">Used</option>
		  <option value="For parts or not working">For parts or not working</option>
		</select>
		<br>
		<p> </p>
		Color: 
		<select name="colorSmartphone">
		  <option value="Red">Red</option>
		  <option value="Black">Black</option>
		  <option value="Blue">Blue</option>
		  <option value="Green">Green</option>
		  <option value="White">White</option>
		  <option value="Yellow">Yellow</option>
		</select>
		<br>
		<p> </p>
		Starting Price: 
		<input type="number"  name="startingPriceSmartphone" min="1" placeholder="$1" required> 
		<br>
		<p> </p>
		Year Released: 
		<select name="yearReleasedSmartphone">
		  <option value="2011">2011</option>
		  <option value="2012">2012</option>
		  <option value="2013">2013</option>
		  <option value="2014">2014</option>
		  <option value="2015">2015</option>
		  <option value="2016">2016</option>
		</select>
		<p> </p>
		Bid Increments: 
		<input type="number"  name="bidIncrementsSmartphone" min="1" placeholder="1" required> 
		<p> </p>
		Minimum Price (willing to accept): 
		<input type="number"  name="minPriceSmartphone" min="1" placeholder="1" required> 
		<p></p> 
		Closing Time (yyyy-MM-dd HH:mm:ss): 
		<input type="text" name="closingTimeSmartphone" placeholder="yyyy-MM-dd HH:mm:ss" required> 
		<p><input type="submit" value="Post Auction"></p>
	</form>
	
	<form id="tvInfo" method=post action="enterAuctionTV.jsp">  
		<p></p>
		Refresh Rate: 
		<select name="refreshrateTV">
		  <option value="50Hz">50Hz</option>
		  <option value="60Hz">60Hz</option>
		  <option value="100Hz">100Hz</option>
		  <option value="120Hz">120Hz</option>
		  <option value="200Hz">200Hz</option>
		  <option value="240Hz">240Hz</option> 
		</select>
		<p></p>
		Display Technology
		<select name=displayTechnologyTV>
		  <option value="CRT">CRT</option>
		  <option value="LED LCD">LED LCD</option>
		  <option value="Direct LED">Direct LED</option>
		  <option value="DLP">DLP</option>
		  <option value="Edge-lit LED">Edge-lit LED</option>
		  <option value="LCD">LCD</option> 
		</select>
		<p></p>
		Max Resolution: 
		<select name=maxResolutionTV>
		  <option value="4320p (8K)">4320p (8K)</option>
		  <option value="4320p">4320p</option>
		  <option value="2160p (4K)">2160p (4K)</option>
		  <option value="1080p">1080p</option>
		  <option value="1080i">1080i</option>
		  <option value="768p">768p</option> 
		</select>
		<p> </p>
		Item Name: 
		<input type="text" name="itemNameTV" placeholder="Name" required><br>
		<p></p>
		Brand:  
		<select name="brandNameTV">
		  <option value="Lenovo">Lenovo</option>
		  <option value="Moto">Moto</option>
		  <option value="VIVO">VIVO</option>
		  <option value="Apple">Apple</option>
		  <option value="Infinix">Infinix</option>
		  <option value="Honor">Honor</option> 
		</select>
		<br>
		<p> </p>
		Condition:
		<select name="conditionOfTV"> 
		  <option value="New">New</option>
		  <option value="Open Box">Open Box</option>
		  <option value="Manufacturer refurbished">Manufacturer refurbished</option>
		  <option value="Seller Refurbished">Seller refurbished</option>
		  <option value="Used">Used</option>
		  <option value="For parts or not working">For parts or not working</option>
		</select>
		<br>
		<p> </p>
		Color: 
		<select name="colorTV">
		  <option value="Red">Red</option>
		  <option value="Black">Black</option>
		  <option value="Blue">Blue</option>
		  <option value="Green">Green</option>
		  <option value="White">White</option>
		  <option value="Yellow">Yellow</option>
		</select>
		<br>
		<p> </p>
		Starting Price: 
		<input type="number"  name="startingPriceTV" min="1" placeholder="1" required> 
		<br>
		<p> </p>
		Year Released: 
		<select name="yearTV">
		  <option value="2011">2011</option>
		  <option value="2012">2012</option>
		  <option value="2013">2013</option>
		  <option value="2014">2014</option>
		  <option value="2015">2015</option>
		  <option value="2016">2016</option>
		</select>
		<p></p> <br> 
		Bid Increments: 
		<input type="number"  name="bidIncrementsTV" min="1" placeholder="1" required> 
		<p> </p>
		Minimum Price (willing to accept): 
		<input type="number"  name="minPriceTV" min="1" placeholder="1" required> 
		<p></p> 
		Closing Time (yyyy-MM-dd HH:mm:ss): 
		<input type="text" name="closingtimeTV" placeholder="yyyy-MM-dd HH:mm:ss" required> 
		<p><input type="submit" value="Post Auction"></p>
	</form>
	
	<form id="laptopInfo" method=post action="enterAuctionLaptop.jsp"> 
		<p></p>
		Operating System: 
		<select  name="operatingSystemLaptop">
		  <option value="Mac OS">Mac OS</option>
		  <option value="Windows">Windows</option>
		  <option value="Linux">Linux</option>
		</select>
		<p></p>
		Graphics:
		<select  name="graphicsLaptop">
		  <option value="615">615</option>
		  <option value="300">300</option>
		  <option value="500">500</option>
		  <option value="AMD">AMD</option>
		</select>
		<p></p>
		Storage Capacity:  
		<select  name="storageCapacityLaptop">
		  <option value="1 TB">1 TB</option>
		  <option value="512 GB">512 GB</option>
		  <option value="256 GB">256 GB</option>
		  <option value="128 GB">128 GB</option>
		</select>
		<p></p>
		RAM:
		<select  name="RAMLaptop">
		  <option value="4GB">4GB</option>
		  <option value="8GB">8GB</option>
		  <option value="16GB">16GB</option>
		  <option value="32GB">32GB</option>
		</select>
		<p></p>
		Screen Size: 
		<select  name="screenSizeLaptop">
		  <option value="Less than 4 in">Less than 4 in</option>
		  <option value="4.0 - 4.4 in">4.0 - 4.4 in</option>
		  <option value="4.5 - 4.9 in">4.5 - 4.9 in</option>
		  <option value="5.0 - 5.4 in">5.0 - 5.4 in</option>
		</select>
		<p></p>
		Storage Type: 
		<select  name="storageTypeLaptop">
		  <option value="SSD">SSD</option>
		  <option value="HDD">HDD</option>
		</select>
		<p> </p>
		Item Name: 
		<input type="text" name="itemNameLaptop" placeholder="Name" required><br>
		<p></p>
		Brand:  
		<select name="brandNameLaptop">
		  <option value="Lenovo">Lenovo</option>
		  <option value="Moto">Moto</option>
		  <option value="VIVO">VIVO</option>
		  <option value="Apple">Apple</option>
		  <option value="Infinix">Infinix</option>
		  <option value="Honor">Honor</option> 
		</select>
		<br>
		<p> </p>
		Condition: 
		<select name="conditionOfLaptop">
		  <option value="New">New</option>
		  <option value="Open Box">Open Box</option>
		  <option value="Manufacturer refurbished">Manufacturer refurbished</option>
		  <option value="Seller Refurbished">Seller refurbished</option>
		  <option value="Used">Used</option>
		  <option value="For parts or not working">For parts or not working</option>
		</select>
		<br>
		<p> </p>
		Color: 
		<select  name="colorLaptop">
		 <option value="Red">Red</option>
		 <option value="Black">Black</option>
		 <option value="Blue">Blue</option>
		 <option value="Green">Green</option>
		 <option value="White">White</option>
		 <option value="Yellow">Yellow</option>
		</select>
		<br>
		<p> </p>
		Starting Price: 
		<input type="number"  name="startingPriceLaptop" min="1" placeholder="$1" required> 
		<br>
		<p> </p>
		Year Released: 
		<select name="yearLaptop">
		  <option value="2011">2011</option>
		  <option value="2012">2012</option>
		  <option value="2013">2013</option>
		  <option value="2014">2014</option>
		  <option value="2015">2015</option>
		  <option value="2016">2016</option>
		</select>
		<p></p> <br> 
		Bid Increments: 
		<input type="number"  name="bidIncrementsLaptop" min="1" placeholder="1" required> 
		<p> </p>
		Minimum Price (willing to accept): 
		<input type="number"  name="minPriceLaptop" min="1" placeholder="1" required> 
		<p></p> 
		Closing Time (yyyy-MM-dd HH:mm:ss): 
		<input type="text" name="closingtimeLaptop" placeholder="yyyy-MM-dd HH:mm:ss" required> 
		<p><input type="submit" value="Post Auction"></p>
	</form>
	
	<form id="headphoneInfo" method=post action="enterAuctionHeadphone.jsp"> 
		<p></p>
		Connectivity:
		<select  name="connectivityHeadphone">
		 <option value="Wired">Wired</option>
		 <option value="Wireless">Wireless</option>
		</select>
		<p></p>
		Connector Type:
		<select  name="connectorTypeHeadphone">
		 <option value="2.5 mm">2.5 mm</option>
		 <option value="3.5 mm (1/8 in)">3.5 mm (1/8 in)</option>
		 <option value="6.35 mm">6.35 mm</option>
		 <option value="6.3 mm (1/4 in)">6.3 mm (1/4 in)</option>
		 <option value="Lightning">Lightning</option>
		 <option value="Micro USB">Micro USB</option>
		</select>
		<p></p> 
		Headphone Type
		<select  name="typeHeadphone">
		 <option value="Earbuds">Earbuds</option>
		 <option value="Headphones">Headphones</option>
		 <option value="Headset">Headset</option>
		</select>
		<p></p>
		Fit Design:  
		<select  name="fitDesignHeadphone">
		 <option value="Ear-Hook">Ear-Hook</option>
		 <option value="Headband">Headband</option>
		 <option value="In-Ear Only">In-Ear Only</option>
		 <option value="Neckband">Neckband</option>
		</select>
		<p> </p>
		Item Name: 
		<input type="text" name="itemNameHeadphone" placeholder="Name" required><br>
		<p></p>
		Brand:  
		<select name="brandNameHeadphone">
		  <option value="Lenovo">Lenovo</option>
		  <option value="Moto">Moto</option>
		  <option value="VIVO">VIVO</option>
		  <option value="Apple">Apple</option>
		  <option value="Infinix">Infinix</option>
		  <option value="Honor">Honor</option> 
		</select>
		<br>
		<p> </p>
		Condition: 
		<select  name="conditionOfHeadphone">
		 <option value="New">New</option>
		 <option value="Open Box">Open Box</option>
		 <option value="Manufacturer Refurbished">Manufacturer Refurbished</option>
		 <option value="Seller Refurbished">Seller Refurbished</option>
		 <option value="Used">Used</option>
		 <option value="For parts or not working">For parts or not working</option>
		</select>
		<br>
		<p> </p>
		Color: 
		<select  name="colorHeadphone">
		 <option value="Red">Red</option>
		 <option value="Black">Black</option>
		 <option value="Blue">Blue</option>
		 <option value="Green">Green</option>
		 <option value="White">White</option>
		 <option value="Yellow">Yellow</option>
		</select>
		<br>
		<p> </p>
		Starting Price: 
		<input type="number"  name="startingPriceHeadphone" min="1" placeholder="$1" required> 
		<br>
		<p> </p>
		Year Released: 
		<select name="yearHeadphone">
		  <option value="2011">2011</option>
		  <option value="2012">2012</option>
		  <option value="2013">2013</option>
		  <option value="2014">2014</option>
		  <option value="2015">2015</option>
		  <option value="2016">2016</option>
		</select>
		<p></p> <br> 
		Bid Increments: 
		<input type="number"  name="bidIncrementsHeadphone" min="1" placeholder="1" required> 
		<p> </p>
		Minimum Price (willing to accept): 
		<input type="number"  name="minPriceHeadphone" min="1" placeholder="1" required> 
		<p></p> 
		Closing Time (yyyy-MM-dd HH:mm:ss): 
		<input type="text" name="closingtimeHeadphone" placeholder="yyyy-MM-dd HH:mm:ss" required> 
		<p><input type="submit" value="Post Auction"></p>
	</form>	
	
	


</body>
</html>