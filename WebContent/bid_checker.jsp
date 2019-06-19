
<%@ page import ="java.sql.*, java.util.Date, java.io.*, java.text.*" %>
<%
    String itemid = request.getParameter("item_id");   
    String current_highest_bid = request.getParameter("current_highest_bid");
    String username = (String) session.getAttribute("user");
    String auction_id = (String) session.getAttribute("auction_id");
    String bid_amount = request.getParameter("bid amount");
    String account_id = null;
    Class.forName("com.mysql.jdbc.Driver").newInstance();

    System.out.println("item_id: " + itemid);
    System.out.println("current_highest_bid: " + current_highest_bid);
    System.out.println("username: " + username);
    System.out.println("auction_id: " + auction_id);
    System.out.println("bid_amount: " + bid_amount);


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
    ResultSet rs;
        
    rs = st.executeQuery("select * from Account where username='" + username + "' limit 1;");
    
    if(rs.next()){
        account_id = rs.getString("account_id");
        System.out.println("account_id: " + account_id);
    }

    rs.close();
    
    if (Integer.parseInt(bid_amount) > Integer.parseInt(current_highest_bid))
    {
        int i = st.executeUpdate("UPDATE AFP SET current_highest_bid = '" + bid_amount + "' where auction_id = '" + auction_id + "'");

        System.out.println("account_id: " + account_id);
        System.out.println("auction_id: " + auction_id);
        System.out.println("bid_amount: " + bid_amount);

        DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        Date date = new Date();
        String bid_time = formatter.format(date);

        st.executeUpdate("INSERT INTO BP (account_id, auction_id, bid_amount, bid_time) values('"+account_id+"', '" + auction_id + "', '" + bid_amount + "', '" + bid_time + "')");
        con.close();
        st.close();
        request.setAttribute("errorMsg", "Bid Successfully");
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    } else {
        rs.close();
        con.close();
        st.close();
        request.setAttribute("errorMsg", "Bid Amount Too Low");
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }
    
                
    } catch (Exception e) {
        System.out.println("sql exception");
        e.printStackTrace();
        request.setAttribute("errorMsg", "Sorry, Item Not Available Now");
        request.getRequestDispatcher("/product.jsp").forward(request, response);
    }
%>
