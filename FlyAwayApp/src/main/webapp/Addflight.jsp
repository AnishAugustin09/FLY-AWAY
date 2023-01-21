<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
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
<title>AddFlight</title>
</head>
<body>
<center>
<h1>FLY AWAY</h1>
<h3>An Airline Reservation Application</h3></br></br>
<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='AdminHome.jsp'>Go Back</a></br></br>

<form action="Addflight" method="post">
Flight From <input type="text" name="source"></br></br>
Flight To <input type="text" name="destination"></br></br>
Flight Date <input type="text" name="Date"></br></br>
Flight Time <input type="text" name="Time"></br></br>
Flight No <input type="text" name="FlightNo"></br></br>
Flight Name <input type="text" name="Name"></br></br>
Flight Ticket Price <input type="number" name="Price"></br></br>


<input type="submit" value="Add flight">
</form>

<%


%>
</center>
</body>
</html>