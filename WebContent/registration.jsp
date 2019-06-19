
<%@ page import ="java.sql.*" %>
<%
    String userid = request.getParameter("login_name");   
    String pwd = request.getParameter("password");
    String email = request.getParameter("email");
    Class.forName("com.mysql.jdbc.Driver").newInstance();

   // Class.forName(driver).newInstance();
    
      Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");
    //Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/buyme?autoReconnect=true","BuyMeAdmin","RutgersCS336"); 
    if(con == null){
    	response.sendRedirect("index.html");
    	System.out.println("Connection Error");
    		
    }
    //http://ec2-13-58-42-120.us-east-2.compute.amazonaws.com:8080/BuyMe/
    Statement st = con.createStatement();
    ResultSet rs = null;
    rs = st.executeQuery("select * from Account where username='" + userid + "'");
    if(rs!=null){
    	System.out.println("User" + userid + "exists");
    	request.setAttribute("errorMsg", "User already exists!");
    	request.getRequestDispatcher("/signUp.jsp").forward(request, response);
		
    } else {
    	int i = st.executeUpdate("insert into Account(username, password, emailAddress) values ('"+userid + "','" + pwd + "','" + email + "')");
        if(i>0){
        	response.sendRedirect("Auth.jsp");
        }else{
        	response.sendRedirect("failAuth.jsp");
        }
    }
    
    
    
    rs.close();
    con.close();
    st.close();
%>
