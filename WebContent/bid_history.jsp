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
<title>Bid History</title>
<link rel="stylesheet" type="text/css" href="CSS/table.css" />
</head>

<%
	String itemid = request.getParameter("item_id");   
	String driverName = "com.mysql.jdbc.Driver";
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
 <%@ include file = "menu.jsp" %>
<body>
		<span class="desc">Bid History</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>Item Name</b></td>
			<td><b>Bid Id</b></td>
			<td><b>Item Id</b></td>
			<td><b>User Name</b></td>
			<td><b>Bid Amount</b></td>
			<td><b>Time</b></td>
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();
				String sql = "SELECT DISTINCT * FROM AFP, Electronics, Account, BP where AFP.item_id = Electronics.item_id and Account.account_id = BP.account_id and BP.auction_id = AFP.auction_id and AFP.item_id = " + "'" + itemid + "'";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("brand")%></td>
			<td><%=resultSet.getString("bid_id")%></td>
			<td><%=resultSet.getString("item_id")%></td>
			<td><%=resultSet.getString("username")%></td>
			<td><%=resultSet.getString("bid_amount")%></td>
			<td><%=resultSet.getString("bid_time")%></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
</body>
</html>