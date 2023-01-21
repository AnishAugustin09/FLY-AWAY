<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.*, java.io.IOException,java.io.PrintWriter,java.sql.*,javax.servlet.ServletException,
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
<body background-image: url("Flightpic.jpg");>
<center>
<h1> FLY AWAY</h1>
<div style="margin:20px;">
<a href="Homepage.jsp">HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="login.jsp">LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Register.jsp">REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Adminpage.jsp">ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href="Contact Us.jsp">CONTACT-US</a>
<%

 

String source=(String)session.getAttribute("source"); 
String destination=(String)session.getAttribute("destination"); 
String date=(String)session.getAttribute("date"); 
String time=(String)session.getAttribute("time");
String Flight=(String)session.getAttribute("Flight");
int travellers=(Integer)session.getAttribute("travellers");
String FlightNo=(String)session.getAttribute("FlightNo");
int Price=(Integer)session.getAttribute("Price");
int tt= Price*travellers;

session.setAttribute("tt",tt);



out.print("<h2>Your Flight Details</h2>");

out.print("<table width=25% border=1>");

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

out.print("<tr><td> FLIGHT NO </td>");

out.print("<td>" + FlightNo + "</td></tr>");

out.print("<tr><td> TRAVELLERS </td>");

out.print("<td>" + travellers + "</td></tr>");

out.print("<tr><td> PRICE </td>");

out.print("<td>" + tt + "</td></tr>");

out.println("</table>"); 

%>

<form action="Login" method="post" border="1px solid black">
<h2>LOGIN</h2>
Name <input type="text" name="uname" required></br></br>
<!-- Age <input type="text" name="uage"></br></br>

Contact No <input type="text" name="mbl"></br></br>
Email Id <input type="text" name="email"></br></br>

Proof <select name="proof"> 
<option value="pan" selected="selected">PAN CARD</option>
<option value="pass">PASSPORT</option>
<option value="pass">VOTER ID</option>

No <input type="number" name="pn"></br>
 -->

Password <input type="password" name="upass" required >
<input type="submit" name="submit" value="Log In"></br></br>

</form>

<h2>New to FLY AWAY</h2>
<a href="Register.jsp">SIGN IN</a>
</div>
</center>
</body>
</html>