<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.DriverManager"%>  
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%> 
<%@page import="java.sql.Connection"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Auctions Participated</title>
<link rel="stylesheet" type="text/css" href="CSS/table.css" />
</head>

<%
	String userid = (String)session.getAttribute("user");
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
 <%@ include file = "menu.jsp" %>
<body>
		<span class="desc">Auctions Participated</span>
	<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr>

		</tr>
		<tr class="headerTable">
			<td><b>User Name</b></td>
			<td><b>Auction ID</b></td>
			<td><b>Item Name</b></td>
		</tr>
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();
				String sql = "SELECT * FROM AFP a, Electronics e, Account ac where a.item_id = e.item_id and ac.account_id = a.account_id";

				resultSet = statement.executeQuery(sql);
				while (resultSet.next()) {
		%>
		<tr class="resultTable">

			<td><%=resultSet.getString("username")%></td>
			<td><%=resultSet.getString("auction_id")%></td>
			<td><%=resultSet.getString("brand")%></td>

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