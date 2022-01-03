package com.rishikesh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ProblemDetector extends HttpServlet {
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String str=request.getParameter("problems").toString();
		String bookslts=request.getParameter("bookslots").toString();
		
		if(bookslts.equals("karo")) 
		{
			request.setAttribute("bookslots", "false");
			try {
				resetRS(str, request);
				response.sendRedirect("DoctorList.jsp");
			} catch (ClassNotFoundException | SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else {
			
		
		try {
			ResultSet rs=getData(str);
			HttpSession session=request.getSession();
			session.setAttribute("resultset", rs);
			response.sendRedirect("DoctorList.jsp");
		} catch (ClassNotFoundException | SQLException e) {
			
			response.getWriter().print(e);
		}
		}
		
		
	}
	public ResultSet getData(String problem) throws SQLException, ClassNotFoundException 
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3307/ewa";
		String uname="root";
		String pass="3241";
		String query="SELECT * FROM doctor WHERE category=?";
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,problem);
		
		ResultSet rs= st.executeQuery();
		ResultSet rs2=rs;
		return rs2;
	}
	
	public void resetRS(String problem,HttpServletRequest request) throws SQLException, ClassNotFoundException 
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3307/ewa";
		String uname="root";
		String pass="3241";
		String query="SELECT * FROM doctor WHERE category=?";
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1,problem);
		
		ResultSet rs= st.executeQuery();
		HttpSession session=request.getSession();
		session.setAttribute("resultset", rs);
		
		
	}
	

	

}
