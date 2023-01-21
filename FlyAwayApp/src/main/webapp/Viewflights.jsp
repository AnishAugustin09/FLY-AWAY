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
<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='AdminHome.jsp'>Go Back</a></br></br>

<h2>Flight Detail's list</h2>

<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("Select * from MasterFlight;");
ResultSetMetaData rsmd = rs.getMetaData(); 
while(rs.next()){
	
	
	String Source=rs.getString(1);
	String Destination=rs.getString(2);
	String Date=rs.getString(3);
	String Time=rs.getString(4);
	String Flight=rs.getString(5);
	int Price=rs.getInt(6);
	String FlightNo=rs.getString(7);
	
	 out.print("<center><table width=60% border=1>");
     out.print("<tc><td><b>" + rsmd.getColumnName(1) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(2) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(3) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(4) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(5) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(6) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(7) + "</b></td></tc>");
     out.print("<tr><td>" + Source + "</td>");
     out.print("<td>" + Destination + "</td>");
     out.print("<td>" + Date + "</td><");
     out.print("<td>" + Time + "</td>");
     out.print("<td>" + Flight + "</td>");
     out.print("<td>" + Price + "</td>");
     out.print("<td>" + FlightNo + "</td></tr>");
     
     
}

%>
</center>
</body>
</html>