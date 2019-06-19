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
	
	<span class="desc">Total Earnings : <%out.print("100"); %></span>
	
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
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM Account";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("account_id")%></td>
			<td><%=resultSet.getString("username")%></td>

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
		<span class="desc">Earning Per Item Type</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>item type</b></td>
			<td><b>earnings</b></td>
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM Account";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("account_id")%></td>
			<td><%=resultSet.getString("username")%></td>

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
		<span class="desc">End User Earnings</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>username</b></td>
			<td><b>earnings</b></td>
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM Account";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("account_id")%></td>
			<td><%=resultSet.getString("username")%></td>

		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
	</div>
	
	<span class="desc">Best Selling User : <%out.print("user"); %></span>
	
	<span class="desc">Best Buyers : <%out.print("user"); %></span>
	
</body>
</html>