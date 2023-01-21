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
<h1> FLY AWAY</h1>
<h3>An Airline Reservation Application</h3></br></br>
<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>

<h3>Enter your Details...</h3>
<form action="Register" method="post">
Name <input type="text" name="uname" required></br></br>
Password <input type="password" name="upass" required></br></br>
Age <input type="number" name="uage" required></br></br>

Contact No <input type="number" name="mbl" required></br></br>
Email Id <input type="text" name="email" required></br></br></br>

<input type="submit" name="submit" value="Register"> 
</form>

</center>
</body>
</html>