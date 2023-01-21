package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class addflight
 */
public class Addflight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Addflight() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		String ff=request.getParameter("source");
		String ft=request.getParameter("destination");
		String fd=request.getParameter("Date");
		Date date=Date.valueOf(fd);
		String ftime=request.getParameter("Time");
		String fn=request.getParameter("Name");
		String fprice=request.getParameter("Price");
		String fno=request.getParameter("FlightNo");
		
		PrintWriter out=response.getWriter();
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			PreparedStatement pstmt=con.prepareStatement("insert into masterflight values(?,?,?,?,?,?,?);");
			
			pstmt.setString(1, ff);
			pstmt.setString(2, ft);
			pstmt.setDate(3,date);
			pstmt.setString(4, ftime);
			pstmt.setString(5, fn);
			pstmt.setString(6, fprice);
			pstmt.setString(7, fno);
			pstmt.executeUpdate();
			pstmt.close();
			response.setContentType("text/html; charset=utf-8");
			out.print("<center>\r\n"
					+ "<h1>Welcome to FLY AWAY</h1>\r\n"
					+ "<h3>An Airline Reservation Application</h3>\r\n"
					+ "<a href=\"Homepage.jsp\">HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"login.jsp\">LOGIN/REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"Booking.jsp\">BOOKINGS</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"Adminpage.jsp\">ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href=\"Contact Us.jsp\">CONTACT-US</a></center>");
			
			out.print("<center><h2>Flight Added Successfully  <a href='AdminHome.jsp'>Go Back</a></h2></center>");
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
//			RequestDispatcher rd= getServletContext().getRequestDispatcher("AdminHome.jsp");
//			rd.forward(request, response);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
		
	}

}
