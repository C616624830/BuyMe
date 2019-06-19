<%@ page import ="java.sql.*,java.util.*,java.lang.*" %>
<%
	//LaptopInfo (enter into Electronics_Laptop Table)
	String operatingSystem = request.getParameter("operatingSystemLaptop");
	String graphicsLaptop = request.getParameter("graphicsLaptop"); 
	String storageCapacity = request.getParameter("storageCapacityLaptop"); 
	String ramLaptop = request.getParameter("RAMLaptop"); 
	String screenSize = request.getParameter("screenSizeLaptop"); 
	String storageLaptop = request.getParameter("storageTypeLaptop"); 
	
	
	//AFP info (enter into AFP table)
	String userName = session.getAttribute("user").toString(); //use this to get AccountID 
	String itemIDAFP; //get this from idOfItem below 
	int startingPriceAFP = Integer.parseInt(request.getParameter("startingPriceLaptop")); 
	int bidIncrements = Integer.parseInt(request.getParameter("bidIncrementsLaptop")); 
	int itemMinPrice = Integer.parseInt(request.getParameter("minPriceLaptop"));
	String closingItem = request.getParameter("closingtimeLaptop"); 
	
	//general info (copy into other JSP files)		
	String itemName = request.getParameter("itemNameLaptop");
	String brand = request.getParameter("brandNameLaptop"); 
	String conditionOfItem = request.getParameter("conditionOfLaptop"); 
	String color = request.getParameter("colorLaptop");
	int startingPrice = Integer.parseInt(request.getParameter("startingPriceLaptop")); 
	int yearReleased = Integer.parseInt(request.getParameter("yearLaptop")); 
	
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	
	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");
	if(con == null){
	  response.sendRedirect("CreateAuction.jsp");
	  System.out.println("Connection Error");
	}
	
	//http://ec2-13-58-42-120.us-east-2.compute.amazonaws.com:8080/BuyMe/
	Statement st = con.createStatement();
	ResultSet rs = null;
	
	int v=st.executeUpdate("insert into Electronics(item_name,brand,conditionItem,color,price,year) values('"+itemName+"','"+brand+"','"+conditionOfItem+"','"+color+"','"+startingPrice+"','"+yearReleased+"')");   
	
	rs = st.executeQuery("SELECT item_id FROM Electronics ORDER BY item_id DESC LIMIT 1");
	rs.first();
	String idOfItem = rs.getString("item_id"); 
	 
	
	//for AFP
	rs = st.executeQuery("select account_id from Account where username='" + userName +"'"); 
	rs.first(); 
	String accountIdOfUser = rs.getString("account_id"); 
	itemIDAFP = idOfItem; 
	
	int i=st.executeUpdate("INSERT INTO Electronics_Laptop(item_id,operating_system,graphics,storage_capacity,RAM,screen_size,storage_type) values('"+idOfItem+"','"+operatingSystem+"','"+graphicsLaptop+"','"+storageCapacity+"','"+ramLaptop+"','"+screenSize+"','"+storageLaptop+"')");
	
	
	int a=st.executeUpdate("INSERT INTO AFP(account_id,item_id,initial_price,bid_increment,secret_min_price,closingTime) values('"+accountIdOfUser+"','"+itemIDAFP+"','"+startingPriceAFP+"','"+bidIncrements+"','"+itemMinPrice+"','"+closingItem+"')");
	 
	//System.out.println("Data is successfully inserted!"); 
	
	if(a>0 && i>0 && v>0){   
		String message = "Auction Entered Successfully";
		request.setAttribute("errorMsg", message);
    	request.getRequestDispatcher("/CreateAuction.jsp").forward(request, response);
	}
	
	 rs.close();
	 con.close();
	 st.close();


   %>
						      
    
