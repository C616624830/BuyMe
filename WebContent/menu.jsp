<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
 <script src="JS/menuScript.js"></script>
<title>BuyMe</title>
<link rel="stylesheet" type="text/css" href="CSS/navigation.css" />
</head>
<body>
<section class="menu">
  <div class="nav-container">
    <div class="brand">
      <a href="landingPage.jsp"> BuyMe </a>
    </div>
    <nav>
      <ul class="nav">
        <!-- Setting the links to #! will ensure that no action takes place on click. -->
        
        <%
		if (session.getAttribute("user").equals("admin")) {
		%>
        <li><a href="main.jsp">Home</a></li>
        <li><a href="#">Admin Page</a></li>
        
        <%
		} 
		
		else {
		%>
		<li><a href="landingPage.jsp">Home</a></li>
		<li><a href="CreateAuction.jsp">Create Auction</a></li>
		<li><a href="#">Alerts </a></li> 
		<%
			}
		%>
	
        
        <li><a class="btn" href="#"><b><%=session.getAttribute("user")%></b> </a>
          <ul class="drop-down">
            <li><a href="viewProfile.jsp">View Profile</a></li>
            <li><a href="postQuestions.jsp">Post Questions</a></li>
            <li><a href="viewQuestionsAndAnswers.jsp">View Q&A</a>
            <li><a href='logout.jsp'>Log out</a></li>
          </ul>
        </li>
      </ul>
    </nav>
  </div>
</section>

</body>
</html>