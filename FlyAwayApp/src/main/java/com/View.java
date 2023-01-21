package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class View
 */
public class View extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public View() {
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
		String pnr=request.getParameter("pnr");
		PrintWriter out=response.getWriter();
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("SELECT * FROM PNR where PNR_NO='"+pnr+"';");

			while(rs.next()){
				
				out.print("<a href='Homepage.jsp'>HOME</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='login.jsp'>LOGIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Register.jsp'>REGISTER</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Adminpage.jsp'>ADMIN</a>&nbsp&nbsp&nbsp&nbsp&nbsp<a href='Contact Us.jsp'>CONTACT-US</a>\r\n"
						+ "");
				out.print("<center><table width=25% border=1>");

				out.print("<tr>");

				out.print("<td> FROM </td>");

				out.print("<td>" + rs.getString(6) + "</td></tr>");

				out.print("<tr><td> TO </td>");

				out.print("<td>" + rs.getString(7) + "</td></tr>");

				out.print("<tr><td> DATE </td>");

				out.print("<td>" + rs.getString(8) + "</td></tr>");

				out.print("<tr><td> TIME </td>");

				out.print("<td>" + rs.getString(9) + "</td></tr>");

				out.print("<tr><td> FLIGHT </td>");

				out.print("<td>" + rs.getString(5) + "</td></tr>");
				
				out.print("<tr><td> FLIGHT NO </td>");

				out.print("<td>" + rs.getString(11) + "</td></tr>");

				out.print("<tr><td> TRAVELLERS </td>");
				
//				out.print("<td> PNR NUMBER </td>");
			//
//				out.print("<td>" + Pnr_no + "</td></tr>");

				out.print("<td>" + rs.getString(12) + "</td></tr>");

				out.print("<tr><td> CUSTOMER ID </td>");

				out.print("<td>" + rs.getInt(1) + "</td></tr>");

				out.print("<tr><td> NAME </td>");

				out.print("<td>" + rs.getString(2) + "</td></tr>");

				/* out.print("<tr><td> AGE </td>");

				out.print("<td>" + age + "</td></tr>"); */

				out.print("<tr><td> PHONE NO </td>");

				out.print("<td>" + rs.getInt(3) + "</td></tr>");

				out.print("<tr><td> EMAIL ID </td>");

				out.print("<td>" + rs.getString(4) + "</td></tr>");
				
				out.print("<tr><td> TOTAL PRICE </td>");

				out.print("<td>" + rs.getInt(13) + "</td></tr>");
				
				

				out.println("</table></center>");
			}
		} catch (Exception e) {
			// TODO: handle exception
		}
		
		

	}

}
