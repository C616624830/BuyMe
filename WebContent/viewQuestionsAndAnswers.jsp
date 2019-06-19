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
 Statement st = null; 
 ResultSet resultSet = null;
 ResultSet rs = null;
 %>

<body>

<div class="profileContainer">
		<h1 align="center">Questions Asked By Users: </h1>
		
		<table align="center" cellpadding="0" cellspacing="0" border="0">
		<tr class="headerTable"> 
			<td><b>Question:</b></td>
			<td><b>Answer:</b>
		</tr>
		 
		<%
			try {
				connection = DriverManager.getConnection(connectionURL + dbName, root, password);
				statement = connection.createStatement();

				resultSet = statement.executeQuery("select account_id from Account where username='" + userName +"'"); 
			    resultSet.first(); 
			    String accountIdOfUser = resultSet.getString("account_id");
			    			    
				rs = st.executeQuery("select * from Staff_Customer_Representative WHERE account_id LIKE '"+accountIdOfUser+"'"); 
				rs.first(); 
				String accountIdOfUser = rs.getString("account_id"); 
				
				//means we have a customer rep 
				if(accountIdOfUser!=null){
					 
				}
			    
				//resultSet = statement.executeQuery(sql);
				//String sql = "SELECT * FROM AFP, Electronics, BP, Account where AFP.account_id = Account.account_id and AFP.account_id = " + "'" + accountIdOfUser + "'";
				String sql = "SELECT userQuestionsAnswer,userQuestionsText FROM userQuestions";
				rs = statement.executeQuery(sql);
				
			while(rs.next()) {
		%>
		<tr class="resultTable">
			<td><%=rs.getString("userQuestionsText")%></td>	
			<td><%=rs.getString("userQuestionsAnswer")%></td>	 
					
		</tr>

		<%
			}

			} catch (Exception e) {
				e.printStackTrace();
			}
		%>
	</table>
 
</div>
</body>
</html>