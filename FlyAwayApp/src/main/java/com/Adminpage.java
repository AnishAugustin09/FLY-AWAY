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
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Adminpage
 */
public class Adminpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Adminpage() {
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
		try {
			
			
			String id=request.getParameter("aid");
			String pass=request.getParameter("apass");
			
			PrintWriter out=response.getWriter();
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/dummy?autoReconnect=true&useSSL=false","root","root");
			Statement stmt=con.createStatement();
			ResultSet rs=stmt.executeQuery("select * from admin; ");
			
			while(rs.next()){
			if((id.equals(rs.getString(1)))&&(pass.equals(rs.getString(2)))) {
				String uid=rs.getString(1);
				String password=rs.getString(2);
				HttpSession session=request.getSession();
				session.setAttribute("aid", uid);
				session.setAttribute("apass", password);
				response.sendRedirect("AdminHome.jsp");
			}else {
				
			}
			}
			
		} catch (Exception e) {
			
		}
	}

}
