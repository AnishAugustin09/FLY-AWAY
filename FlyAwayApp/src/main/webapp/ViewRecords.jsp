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

<h2>Passenger Booking List</h2>
<%

Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
Statement stmt=con.createStatement();
ResultSet rs=stmt.executeQuery("Select * from pnr;");
ResultSetMetaData rsmd = rs.getMetaData(); 

while(rs.next()){
	
	 out.print("<center><table width=60% border=1>");
     out.print("<tc><td><b>" + rsmd.getColumnName(1) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(2) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(3) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(4) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(5) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(6) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(7) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(8) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(9) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(10) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(11) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(12) + "</b></td></tc>");
     out.print("<tc><td><b>" + rsmd.getColumnName(13) + "</b></td></tc>");
     
     out.print("<tr><td>" + rs.getInt(1) + "</td>");
     out.print("<td>" + rs.getString(2) + "</td>");
     out.print("<td>" + rs.getInt(3) + "</td>");
     out.print("<td>" + rs.getString(4) + "</td>");
     out.print("<td>" + rs.getString(5) + "</td>");
     out.print("<td>" + rs.getString(6) + "</td>");
     out.print("<td>" + rs.getString(7) + "</td>");
     out.print("<td>" + rs.getString(8) + "</td>");
     out.print("<td>" + rs.getString(9) + "</td>");
     out.print("<td>" + rs.getString(10) + "</td>");
     out.print("<td>" + rs.getString(11) + "</td>");
     out.print("<td>" + rs.getInt(12) + "</td>");
     out.print("<td>" + rs.getInt(13) + "</td></tr></br></br>");
	
}



%>
</center>
</body>
</html>