package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.http.HttpRequest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.Statement;
import java.sql.Time;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Available_flights
 */
public class Available_flights extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Available_flights() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		try {
			
			String source=request.getParameter("source");
			String destination=request.getParameter("destination");
			String date=request.getParameter("date");
			int travellers=Integer.parseInt(request.getParameter("travellers"));
			//String time= request.getParameter("time");
			
			
			 
			 
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from MasterFlight where Source='"+source+"'and Destination='"+destination+"'and date='"+date+"';");
			//ResultSet rs1=stmt.executeQuery("select * from MasterFlight where Date='"+date+"';");
			//ResultSet rs2=stmt.executeQuery("select * from MasterFlight where flight_time='"+time+"';");
			PrintWriter out=response.getWriter();
			ResultSetMetaData rsmd = rs.getMetaData();
			
			out.print("<h1>Available Flights </h1>\r\n"
					+ "<h3>An Airline Reservation Application</h3>");
			response.setContentType("Flightpic2.jpg");
			out.println("<html>");
			out.println("<head>");
			out.println("<style type=\"text/css\">\r\n"
					+ "body {\r\n"
					+ "    background-image: url(\"Flightpic2.jpg\");\r\n"
					+ "    background-repeat: no-repeat;\r\n"
					+ "    background-size: cover;\r\n"
					+ "    background-attachment: fixed;\r\n"
					+ "}\r\n"
					+ "</style>");
			out.println("<title>");
			out.println("Employee Home Page");
			out.println("</TITLE>");
			out.println("</head>");
			out.println("<body >");
			//out.println(e.getMessage());

			out.println("</body>");
			out.println("</html>");
				
				out.print("<b>Source:</b> " + source + "");
		        out.print("<br>" + "<b>Destination:</b> " + destination +"</br>");
		        while(rs.next()) {
		        if (rs.next() == false) {
		            out.println("<center><h2>No Flights Available !! Please enter another date or location...</h2></center>");
		          }else {
		        
		        	
						
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
					        out.print("<tr><a href='login.jsp'>Book </a></br></tr>");
					        out.println("</table></br></br></center>");
					        
					        HttpSession session=request.getSession(); 
							  session.setAttribute("source",source); 
							  session.setAttribute("destination", destination);
							  session.setAttribute("date", date); 
							  session.setAttribute("travellers",travellers);
							  session.setAttribute("time", Time);
							  session.setAttribute("Flight", Flight);
							  session.setAttribute("Price", Price);
							  session.setAttribute("FlightNo", FlightNo);
							  //if(source.equals(rs.getString(1))||destination.equals(rs.getString(2))||date.equals(rs.getString(3))) {
//											RequestDispatcher rd=request.getRequestDispatcher("Available_flights");  
//											rd.include(request, response); 
		        	}	
				}
					
			        
		        
		        
		        
			
			
			
			
			
		} catch (Exception e) {
			
		}
	}

}
