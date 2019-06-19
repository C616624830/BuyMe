<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Viewing Profile</title>
<link rel="stylesheet" type="text/css" href="CSS/profile.css" />
<link rel="stylesheet" type="text/css" href="CSS/table.css" />
<%@ include file = "menu.jsp" %>
<br><br><br> 
</head>


<%
	//String itemid = request.getParameter("item_id");

	String driverName = "com.mysql.jdbc.Driver";
	//String email = request.getParameter("email");
    String userName = session.getAttribute("user").toString(); //use this to get AccountID
	String connectionURL = "jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/";
	String dbName = "BuyMe";
	String root = "BuyMeAdmin";
	String password = "RutgersCS336";
%>
<% 
try { 
Class.forName(driverName); 
} catch (ClassNotFoundException e){
e.printStackTrace();
 } 
 
 Connection connection = null; 
 Statement statement = null; 
 ResultSet resultSet = null;
 ResultSet rs = null;
 %>

<body>

<div class="profileContainer">
		<div class="content">Username: <%=session.getAttribute("user")%></div>
		<h1>Current Auctions Participating in: </h1>
			<table align="center" cellpadding="0" cellspacing="0" border="0">

		<tr class="headerTable">
			<td><b>Item id</b></td>
			<td><b>User Name</b></td>
			<td><b>Closing</b></td>
			<td><b>Auction Id</b></td>
		</tr>
		
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();

				resultSet = statement.executeQuery("select account_id from Account where username='" + userName +"'"); 
			    resultSet.first(); 
			    String accountIdOfUser = resultSet.getString("account_id");
			    
				//resultSet = statement.executeQuery(sql);
				//String sql = "SELECT * FROM AFP, Electronics, BP, Account where AFP.account_id = Account.account_id and AFP.account_id = " + "'" + accountIdOfUser + "'";
				String sql = "SELECT * FROM AFP, Account where AFP.account_id = Account.account_id and AFP.account_id = " + "'" + accountIdOfUser + "'";

				rs = statement.executeQuery(sql);
				
			while(rs.next()) {
		%> 
		<tr class="resultTable">
			<td><%=rs.getString("item_id")%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("closingTime")%></td>
			<td><%=rs.getString("auction_id")%></td>

		</tr>
 
		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>

</div>
		<div>
			<h1>Bids you made: </h1>
			<table align="center" cellpadding="0" cellspacing="0" border="0">

		<tr class="headerTable">
			<td><b>Bid Amount</b></td>
			<td><b>User Name</b></td>
			<td><b>Bid Time</b></td>
			<td><b>Auction Id</b></td>
		</tr>
		
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();

				resultSet = statement.executeQuery("select account_id from Account where username='" + userName +"'"); 
			    resultSet.first(); 
			    String accountIdOfUser = resultSet.getString("account_id");
			    
				//resultSet = statement.executeQuery(sql);
				//String sql = "SELECT * FROM AFP, Electronics, BP, Account where AFP.account_id = Account.account_id and AFP.account_id = " + "'" + accountIdOfUser + "'";
				String sql = "SELECT * FROM BP, Account where BP.account_id = Account.account_id and BP.account_id = " + "'" + accountIdOfUser + "'";

				rs = statement.executeQuery(sql);
				
			while(rs.next()) {
		%>
		<tr class="resultTable">

			<td><%=rs.getString("bid_amount")%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("bid_time")%></td>
			<td><%=rs.getString("auction_id")%></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
		</div>

			<div>
			<h1>Auctions you've won! </h1>
			<table align="center" cellpadding="0" cellspacing="0" border="0">

		<tr class="headerTable">
			<td><b>Bid Amount</b></td>
			<td><b>User Name</b></td>
			<td><b>Bid Time</b></td>
			<td><b>Auction Id</b></td>
		</tr>
		
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();

				resultSet = statement.executeQuery("select account_id from Account where username='" + userName +"'"); 
			    resultSet.first(); 
			    String accountIdOfUser = resultSet.getString("account_id");
			    
				//resultSet = statement.executeQuery(sql);
				//String sql = "SELECT * FROM AFP, Electronics, BP, Account where AFP.account_id = Account.account_id and AFP.account_id = " + "'" + accountIdOfUser + "'";
				String sql = "SELECT * FROM Buyer,BP, Account where Buyer.account_id = Account.account_id and BP.account_id = Account_id and Buyer.account_id = " + "'" + accountIdOfUser + "'";

				rs = statement.executeQuery(sql);
				
			while(rs.next()) {
		%>
		<tr class="resultTable">

			<td><%=rs.getString("bid_amount")%></td>
			<td><%=rs.getString("username")%></td>
			<td><%=rs.getString("bid_time")%></td>
			<td><%=rs.getString("auction_id")%></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
		</div>
<br>
<br>
</body>
</html>