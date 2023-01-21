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
<title>Home</title>
</head>
<body>


<center>
<h1>Welcome to FLY AWAY</h1>
<h3>An Airline Reservation Application</h3>
<a href="Homepage.jsp">HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="login.jsp">LOGIN/REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Booking.jsp">BOOKINGS</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Adminpage.jsp">ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Contact Us.jsp">CONTACT-US</a></br></br>
<marquee><b>NOTE: For security reasons we are not logging  your credit card details and the amount will be deducted only if the tickets are successfully booked</b></marquee>
<div style="max-width:1000px;  border:2px solid black;border-radius: 15px;padding-top: 50px; margin-top:40px;"><form action="Available_flights" method="post">
<b>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspSource <input type="text" name="source" required>
&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspDestination <input type="text" name="destination" required>

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTravellers <input type="number" name="travellers" required><br/><br/><br/><br/>
Date<input type="date" name="date">

<!-- &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbspTime<select name="time" required>
<option value="08:00:00" selected="selected">08:00:00</option>
<option value="12:00:00">12:00:00</option>
<option value="20:00:00">20:00:00</option>
</select><br/><br/><br/><br/> -->




<input type="submit" name="submit" value="Search"></br></br></br></div>



</b>
</form>
<a href="Adminpage.jsp">Admin Login</a> 
<h3>This Application was developed by ANISH AUGUSTIN</h3> 
</center>
</body>
</html>