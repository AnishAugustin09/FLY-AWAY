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

<h2>FLY AWAY</h2>
<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>


<div style="margin:0px;">
<%

String source=(String)session.getAttribute("source"); 
String destination=(String)session.getAttribute("destination"); 
String date=(String)session.getAttribute("date"); 
String time=(String)session.getAttribute("time");
String Flight=(String)session.getAttribute("Flight");
int travellers=(Integer)session.getAttribute("travellers");
String FlightNo=(String)session.getAttribute("FlightNo");
int Price=(Integer)session.getAttribute("Price");
int tt=(Integer)session.getAttribute("tt");
String name=(String)session.getAttribute("uname");

out.print("<h2>Hi "+name+", Your Flight Details</h2>");

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

out.print("<tr><td> TOTAL PRICE </td>");

out.print("<td>" + tt + "</td></tr>");

out.println("</table>"); 

out.print("<h3> Amount ="+Price+" & Total Travellers ="+travellers+"</h3>");
out.print("<h4>Total Amount ="+tt);


Class.forName("com.mysql.cj.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
/* String query="insert into pnr (Flight,Source,Destination,Travel_date,flight_time)values (?,?,?,?,?)";
PreparedStatement pstmt=con.prepareStatement(query);

pstmt.setString(1,Flight);
pstmt.setString(2,source);
pstmt.setString(3,destination);
pstmt.setString(4,date);
pstmt.setString(5,time);
pstmt.executeUpdate();
 */
%></div>
<h3>Enter Payment details...</h3>

<form action="Congrats.jsp" method="post">
Enter Acc No<input type="number" name="accno"></br></br>
Enter Bank <input type="text" name="bank"></br></br>
Enter CVV <input type="number" namme="cvv"></br></br>

<input type="submit" name="submit" value="Make payment">

</form>

</center>

</body>
</html>