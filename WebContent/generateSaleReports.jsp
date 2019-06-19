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
<title>Sales Report</title>
<link rel="stylesheet" type="text/css" href="CSS/table.css" />
</head>

<%
	String userid = request.getParameter("login_name");
	String pwd = request.getParameter("password");
	String driverName = "com.mysql.jdbc.Driver";
	String email = request.getParameter("email");
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
 %>
<body>
	<%
	try{
		connection = DriverManager.getConnection(connectionURL + dbName, root, password);
		statement = connection.createStatement();
		String sql1 = "select sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics USING (item_id) where closingTime <= CURDATE();";
		resultSet = statement.executeQuery(sql1);
		resultSet.next();
		%>
		<span class="desc">Total Earnings : <%out.print(resultSet.getString("sum(earnings_for_item)")); %></span>
		
	
	
	
	<div>
		<span class="desc">Earning Per Item</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>itemid</b></td>
			<td><b>earnings</b></td>
		</tr>
		<%
			
				String sql2 = "select item_id, earnings_for_item from BuyMe.AFP JOIN BuyMe.Electronics USING (item_id) where closingTime <= CURDATE()";

				resultSet = statement.executeQuery(sql2);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("item_id")%></td>
			<td><%=resultSet.getString("earnings_for_item")%></td>

		</tr>

		<%
			}

			
		%>
	</table>
	</div>
	
	<%String sql3 = "select sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics_Headphones USING (item_id) JOIN BuyMe.Electronics Using (item_id) where closingTime <= CURDATE();";
	resultSet = statement.executeQuery(sql3); 
	resultSet.next();
	%>
	
	<div><li>Earning by type1 Electronics_Headphones: <% out.print(resultSet.getString("sum(earnings_for_item)")); %></li></div>
	
	<%String sql4 = "select sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics_Laptop USING (item_id) JOIN BuyMe.Electronics Using (item_id) where closingTime <= CURDATE();";
	resultSet = statement.executeQuery(sql4); 
	resultSet.next();
	%>
	
	<div><li>Earning by type2 Electronics_Laptop: <% out.print(resultSet.getString("sum(earnings_for_item)")); %></li></div>
	
	<%String sql5 = "select sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics_Smartphones USING (item_id) JOIN BuyMe.Electronics Using (item_id) where closingTime <= CURDATE();";
	resultSet = statement.executeQuery(sql5); 
	resultSet.next();
	%>
	
	<div><li>Earning by type3 Electronics_Smartphone: <% out.print(resultSet.getString("sum(earnings_for_item)")); %></li></div>
	
	<%String sql6 = "select sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics_TV USING (item_id) JOIN BuyMe.Electronics Using (item_id) where closingTime <= CURDATE();";
	resultSet = statement.executeQuery(sql6); 
	resultSet.next();
	%>
	
	<div><li>Earning by type4 Electronics_TV: <% out.print(resultSet.getString("sum(earnings_for_item)")); %></li></div>
	
	<div>
		<span class="desc">Earning per end-users</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>Account Id</b></td>
			<td><b>Earnings</b></td>
		</tr>
		<%
			
				String sql7 = "select account_id, sum(earnings_for_item) from BuyMe.AFP JOIN BuyMe.Electronics USING (item_id) where closingTime <= CURDATE() group by account_id;";

				resultSet = statement.executeQuery(sql7);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("account_id")%></td>
			<td><%=resultSet.getString("sum(earnings_for_item)")%></td>

		</tr>

		<%
			}

			
		%>
	</table>
	</div>
	
	<div>
		<span class="desc">Best selling item name</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>Item Name</b></td>
		</tr>
		<%
			
				String sql8 = "select t.item_name from (select item_name, count(*) count from BuyMe.AFP join BuyMe.Electronics using (item_id) where closingTime <= CURDATE() group by item_name  )as t where count = (select max(t.count) from (select item_name, count(*) count from BuyMe.AFP join BuyMe.Electronics using (item_id) where closingTime <= CURDATE() group by item_name  )t);";
				resultSet = statement.executeQuery(sql8);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("item_name")%></td>

		</tr>

		<%
			}

			
		%>
	</table>
	</div>
	
	<%
	String sql9= "select y.account_id from (select account_id, count(*) count from BuyMe.AFP where closingTime <= CURDATE() group by account_id) as y where count =(select max(y.count) from (select account_id, count(*) count from BuyMe.AFP  where closingTime <= CURDATE() group by account_id)y);";
	resultSet = statement.executeQuery(sql9); 
	resultSet.next();
	%>
	
	<div><li>Best buyer: <% out.print(resultSet.getString("account_id")); %></li></div>
	
	<%} catch(Exception e) {
		e.printStackTrace();
	}
	%>
	
</body>
</html>