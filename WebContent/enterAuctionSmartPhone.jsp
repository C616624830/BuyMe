<%@ page import ="java.sql.*,java.util.*,java.lang.*" %>
<%
	//smartPhoneInfo (enter into Electronics_Smartphone Table)
	String processor = request.getParameter("processorSmartphone");
	String storageCapacity = request.getParameter("storageCapacitySmartphone"); 
	String screenSize = request.getParameter("screenSizeSmartphone"); 
	String operatingSystem = request.getParameter("operatingSystemSmartphone"); 
	String RAM = request.getParameter("RAMItemSmartphone");
	
	//AFP info (enter into AFP table)
	String userName = session.getAttribute("user").toString(); //use this to get AccountID 
	String itemIDAFP; //get this from idOfItem below 
	int startingPriceAFP = Integer.parseInt(request.getParameter("startingPriceSmartphone")); 
	int bidIncrements = Integer.parseInt(request.getParameter("bidIncrementsSmartphone")); 
	int itemMinPrice = Integer.parseInt(request.getParameter("minPriceSmartphone"));
	String closingItem = request.getParameter("closingTimeSmartphone"); 
	
	//general info (copy into other JSP files)		
	String itemName = request.getParameter("itemNameSmartphone");
	String brand = request.getParameter("brandNameSmartphone"); 
	String conditionOfItem = request.getParameter("conditionOfSmartPhone"); 
	String color = request.getParameter("colorSmartphone");
	int startingPrice = Integer.parseInt(request.getParameter("startingPriceSmartphone")); 
	int yearReleased = Integer.parseInt(request.getParameter("yearReleasedSmartphone")); 
	
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
	 
	
	rs = st.executeQuery("select account_id from Account where username='" + userName +"'"); 
	rs.first(); 
	String accountIdOfUser = rs.getString("account_id"); 
	
	itemIDAFP = idOfItem; 
	
	int i=st.executeUpdate("INSERT INTO Electronics_Smartphones(item_id,processor,storage_capacity,screen_size,operating_system,ram) values('"+idOfItem+"','"+processor+"','"+storageCapacity+"','"+screenSize+"','"+operatingSystem+"','"+RAM+"')");
	 
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
						   
		   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
			   
    
