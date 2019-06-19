<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import ="java.sql.*, java.util.Date, java.util.*, java.io.*, java.text.*" %>
 
<%
		DateFormat formatter=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		String datetime = formatter.format(date);
		System.out.println(datetime);
		
		String date2 = "2019-04-23 17:12:20";
		Date date2_ = formatter.parse(date2);
		
		if (date2_.after(date)){
			System.out.println("date2_ is after date");
		} else {
			System.out.println("date is after date2_");
		}
		%>


