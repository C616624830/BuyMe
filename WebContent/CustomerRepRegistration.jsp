
<%@ page import ="java.sql.*" %>
<%
    String username = request.getParameter("login_name");   
    String pwd = request.getParameter("password");
    String email = request.getParameter("email");
    String account_id = null;
     Class.forName("com.mysql.jdbc.Driver").newInstance();

   // Class.forName(driver).newInstance();
    try {
      Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");
    //Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/buyme?autoReconnect=true","BuyMeAdmin","RutgersCS336"); 
    if(con == null){
    	response.sendRedirect("index.html");
    	System.out.println("Connection Error");
    		
    }
    //http://ec2-13-58-42-120.us-east-2.compute.amazonaws.com:8080/BuyMe/
    Statement st = con.createStatement();
    ResultSet rs = null;
    rs = st.executeQuery("select * from Account where username='" + username + "'");

    System.out.println("username: " + username);
    System.out.println("pwd: " + pwd);
    System.out.println("email: " + email);

    if(rs.next()){
        System.out.println("username: " + username);
        System.out.println("pwd: " + pwd);
        System.out.println("email: " + email);
        System.out.println("User" + username + "exists");
        request.setAttribute("errorMsg", "User" + username + "exists");
        request.getRequestDispatcher("/CreateCustomerRepr.jsp").forward(request, response);
    } else {
        rs.close();
            System.out.println("username: " + username);
            System.out.println("pwd: " + pwd);
            System.out.println("email: " + email);
            int i = st.executeUpdate("insert into Account(username, password, emailAddress) values ('"+username + "','" + pwd + "','" + email + "')");
            rs = st.executeQuery("select * from Account where username='" + username + "'");
            if (rs.next()){
                account_id = rs.getString("account_id");
            }
            i = st.executeUpdate("insert into Staff_Customer_Representative(account_id) values ('"+account_id + "')");

            response.sendRedirect("login.jsp");
    }
    
    
    
    
    rs.close();
    con.close();
    st.close();
    } catch (Exception e) {
        e.printStackTrace();
        request.setAttribute("errorMsg", "Error");
        request.getRequestDispatcher("/CreateCustomerRepr.jsp").forward(request, response);
    }
%>
