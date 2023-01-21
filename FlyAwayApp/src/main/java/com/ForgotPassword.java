package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ForgorPassword
 */
public class ForgotPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ForgotPassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String opass=request.getParameter("Opass");
		String npass=request.getParameter("npass");
		String cnpass=request.getParameter("CNpass");
		
		PrintWriter out=response.getWriter();
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			PreparedStatement pstmt=con.prepareStatement("update admin set Password=? where admin_id='1';");

			
				
				pstmt.setString(1,cnpass);
				
				pstmt.executeUpdate();
				pstmt.close();
				
				out.print("<center><h2>Password Updated Successfully</h2><a href='AdminHome.jsp'>Go Back</a></center>");
				response.sendRedirect("AdminHome.jsp");
			
		} catch (Exception e) {
			// TODO: handle exception
		}
			}

}
