<%@page import="java.sql.*"%>
<%
String firstname=request.getParameter("firstname");
String lastname=request.getParameter("lastname");
String email=request.getParameter("email");
String pickuploc=request.getParameter("fromlo");
String droplocation=request.getParameter("tolo");
String mobilenumber=request.getParameter("mobilenumber");
String gender=request.getParameter("gender");
String date=request.getParameter("date");
String time=request.getParameter("time");
String distance=request.getParameter("distance");
String duration=request.getParameter("duration");
String rateusd=request.getParameter("rateusd");
String rateinr=request.getParameter("rateinr");




try
{
	java.sql.Connection con;
	Class.forName("com.mysql.jdbc.Driver");
	//Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1","root","sarvesh13");
	con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db1", "root", "sarvesh13");
	Statement st=con.createStatement();
	st.executeUpdate("INSERT INTO passenger(firstname,lastname,email,pickuploc,droplocation,mobilenumber,gender,distance,dat,tim,duration,rateusd,rateinr) VALUES ('"+firstname+"','"+lastname+"','"+email+"','"+pickuploc+"','"+droplocation+"','"+mobilenumber+"','"+gender+"','"+distance+"','"+date+"','"+time+"','"+duration+"','"+rateusd+"','"+rateinr+"')");
	response.sendRedirect("bill.jsp");
	
}
catch(Exception e)
{
//out.println(e);
response.sendRedirect("error.html");
}
%>

