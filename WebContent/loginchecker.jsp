
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("login_name");   
    String pwd = request.getParameter("password");
    Class.forName("com.mysql.jdbc.Driver").newInstance();
    
    Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");
    if(con == null){
    	response.sendRedirect("index.html");
    	System.out.println("Connection Error");
    		
    }
    //http://ec2-13-58-42-120.us-east-2.compute.amazonaws.com:8080/BuyMe/
    Statement st = con.createStatement();
    ResultSet rs;
    rs = st.executeQuery("select * from Account where username='" + userid + "' and password='" + pwd + "'");
  
    if (rs.next()) {
        session.setAttribute("user", userid); // the username will be stored in the session
        out.println("Welcome " + userid);
        out.println("<a href='logout.jsp'>Log out</a>");
        response.sendRedirect("Auth.jsp");
    } else {
    	request.setAttribute("errorMsg", "Invalid user or password");
    	request.getRequestDispatcher("/login.jsp").forward(request, response);
        //out.println("Invalid password <a href='login.jsp'>try again</a>");
    }
    rs.close();
    con.close();
    st.close();
%>
