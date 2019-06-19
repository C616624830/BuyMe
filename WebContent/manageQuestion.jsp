<%@ page import ="java.sql.*,java.util.*,java.lang.*" %>
<%	
	String question = request.getParameter("textAreaQuestion");
	
    Class.forName("com.mysql.jdbc.Driver").newInstance(); 
	
	Connection con = DriverManager.getConnection("jdbc:mysql://buyme3.cnzkfp1dzwsv.us-east-2.rds.amazonaws.com:3306/BuyMe?autoReconnect=true","BuyMeAdmin","RutgersCS336");
	if(con == null){
	  response.sendRedirect("CreateAuction.jsp");
	  System.out.println("Connection Error");
	}
	
	//http://ec2-13-58-42-120.us-east-2.compute.amazonaws.com:8080/BuyMe/
	Statement st = con.createStatement();
	ResultSet rs = null;
	
	int v=st.executeUpdate("insert into userQuestions(userQuestionsText) values('"+question+"')");   
		
	if(v>0){   
		String message = "Question Asked Successfully";
		request.setAttribute("errorMsg", message);
    	request.getRequestDispatcher("/postQuestions.jsp").forward(request, response);
	}
	
	 //rs.close();
	 con.close();
	 st.close();


   %>
						      
    
