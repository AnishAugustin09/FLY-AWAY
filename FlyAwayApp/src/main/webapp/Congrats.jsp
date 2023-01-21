<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%@ page import="java.util.*, java.io.IOException,java.io.PrintWriter,java.sql.*,javax.servlet.ServletException,
 javax.servlet.http.HttpServlet,
 javax.servlet.http.HttpServletRequest,
 javax.servlet.http.HttpServletResponse,
 javax.servlet.http.HttpSession" %>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
body {
    background-image: url("Flightpic2.jpg");
    background-repeat: no-repeat;
    background-size: cover;
    background-attachment: fixed;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<center>

<h1>FLY AWAY</h1>
<h3>An Airline Reservation Application</h3></br></br>
<a href="Homepage.jsp">HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="login.jsp">LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Register.jsp">REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Adminpage.jsp">ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Contact Us.jsp">CONTACT-US</a>
<h2>Congratulations!! Your Booking has Done</h2>
<h3>Your Booking Details</h3>

<%



String source=(String)session.getAttribute("source"); 
String destination=(String)session.getAttribute("destination"); 
String date=(String)session.getAttribute("date"); 
String time=(String)session.getAttribute("time");
String Flight=(String)session.getAttribute("Flight");
String FlightNo=(String)session.getAttribute("FlightNo");
int customerID=(Integer)session.getAttribute("ID");
String name=(String)session.getAttribute("uname");  
int mobileno=(Integer)session.getAttribute("mbl"); 
String email=(String)session.getAttribute("email");
int travellers=(Integer)session.getAttribute("travellers");
int tt=(Integer)session.getAttribute("tt");


/* out.print("<table width=25% border=1>");

out.print("<tr>");

out.print("<td> FROM </td>");

out.print("<td>" + source + "</td></tr>");

out.print("<tr><td> TO </td>");

out.print("<td>" + destination + "</td></tr>");

out.print("<tr><td> DATE </td>");

out.print("<td>" + date + "</td></tr>");

out.print("<tr><td> TIME </td>");

out.print("<td>" + time + "</td></tr>");

out.print("<tr><td> FLIGHT </td>");

out.print("<td>" + Flight + "</td></tr>");

out.print("<tr><td> TRAVELLERS </td>");

out.print("<td>" + travellers + "</td></tr>");

out.print("<tr><td> CUSTOMER ID </td>");

out.print("<td>" + customerID + "</td></tr>");

out.print("<tr><td> NAME </td>");

out.print("<td>" + name + "</td></tr>");

/* out.print("<tr><td> AGE </td>");

out.print("<td>" + age + "</td></tr>"); */

/* out.print("<tr><td> PHONE NO </td>");

out.print("<td>" + mobileno + "</td></tr>");

out.print("<tr><td> EMAIL ID </td>");

out.print("<td>" + email + "</td></tr>");

out.println("</table>");  */


try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
	String query="insert into pnr (customerID, customerName, MoblieNo, EmailID, Flight, Source, Destination,Travel_date, flight_time,Flight_No,Travellers,Price) values(?,?,?,?,?,?,?,?,?,?,?,?);";
	PreparedStatement pstmt=con.prepareStatement(query);

	pstmt.setInt(1,customerID);
	pstmt.setString(2,name);
	pstmt.setInt(3,mobileno);
	pstmt.setString(4,email);
	pstmt.setString(5,Flight);
	pstmt.setString(6,source);
	pstmt.setString(7,destination);
	pstmt.setString(8,date);
	pstmt.setString(9,time);
	pstmt.setString(10,FlightNo);
	pstmt.setInt(11,travellers);
	pstmt.setInt(12,tt);
	pstmt.executeUpdate();
	con.close();
	out.print("<h3>PNR Generated</h3>");
}catch(Exception e){
	
}
	


%>

<a href='Pnr.jsp'>Click here to view PNR</a>

</center>
</body>
</html>