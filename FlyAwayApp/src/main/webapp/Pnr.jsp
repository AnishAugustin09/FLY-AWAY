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
<div style="margin:0px;">
<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>

<%
out.print("<h2>PASSENGER NAME RECORD</h2>");
out.print("<h3>Thanks for Booking in FLY AWAY</h3>");




Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("SELECT * FROM PNR;");

while(rs.next()) {

	int Pnr_no=rs.getInt(10);
	session.setAttribute("Pnr_no", Pnr_no);
	
}

String source=(String)session.getAttribute("source"); 
String destination=(String)session.getAttribute("destination"); 
String date=(String)session.getAttribute("date"); 
String time=(String)session.getAttribute("time");
String Flight=(String)session.getAttribute("Flight");
int customerID=(Integer)session.getAttribute("ID");
String name=(String)session.getAttribute("uname");  
int mobileno=(Integer)session.getAttribute("mbl"); 
String email=(String)session.getAttribute("email");
int travellers=(Integer)session.getAttribute("travellers");
int Price=(Integer)session.getAttribute("Price");
String FlightNo=(String)session.getAttribute("FlightNo");
int Pnr =(Integer)session.getAttribute("Pnr_no");
int tt= Price*travellers;


out.print("<table width=25% border=1>");

out.print("<tr>");

out.print("<td> PNR NUMBER </td>");

out.print("<td>" + Pnr + "</td></tr>");

out.print("<td> FROM </td>");

out.print("<td>" + source + "</td></tr>");

out.print("<tr><td> TO </td>");

out.print("<td>" + destination + "</td></tr>");

out.print("<tr><td> DATE </td>");

out.print("<td>" + date + "</td></tr>");

out.print("<tr><td> TIME </td>");

out.print("<td>" + time + "</td></tr>");

out.print("<tr><td> FLIGHT NO </td>");

out.print("<td>" + FlightNo + "</td></tr>");

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

out.print("<tr><td> PHONE NO </td>");

out.print("<td>" + mobileno + "</td></tr>");

out.print("<tr><td> EMAIL ID </td>");

out.print("<td>" + email + "</td></tr>");

out.print("<tr><td> PRICE </td>");

out.print("<td>" + tt + "</td></tr>");

out.println("</table>"); 



%>
</div>
</center>
</body>
</html>