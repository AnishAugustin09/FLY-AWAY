package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	
		String name=request.getParameter("uname");
		String pass=request.getParameter("upass");
		boolean log=false;
		PrintWriter out=response.getWriter();
		response.setContentType("text/jsp");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("Select * from Customers;");
			
			while(rs.next()&&log==false) {
				
				if(name.equals(rs.getString(2))&&pass.equals(rs.getString(3))) {
					
					int customerID=rs.getInt(1);
					int mobileno=rs.getInt(4);
					String email=rs.getString(5);
					HttpSession session= request.getSession(false);
					session.setAttribute("ID", customerID);
					session.setAttribute("uname", name);
					session.setAttribute("mbl",mobileno );
					session.setAttribute("email", email);
					
					response.sendRedirect("Payment.jsp");
					
					log=true;
					
				}
				else {
					
//					out.print("Invalid Crediential!!!! Please try again");
//					out.print("<a href='login.jsp'>Click here to go back</a>");
//					RequestDispatcher rd=request.getRequestDispatcher("/login.html");  
//			        rd.include(request, response);   
//			        
					
				}
				
				
			}
			
			
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	}

}
