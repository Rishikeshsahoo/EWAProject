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


public class DoctorAuthenication extends HttpServlet {
	
	protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pass= req.getParameter("password").toString();
		String uname= req.getParameter("username").toString();
		HttpSession session= req.getSession();
		try {
			confirm(uname, pass, res,req);
		} catch (ClassNotFoundException | SQLException | IOException e) {
			// TODO Auto-generated catch block
			res.getWriter().print(e);
		}
	}
	public void confirm(String username,String password, HttpServletResponse res,HttpServletRequest req) throws ClassNotFoundException, SQLException, IOException 
	{
		Class.forName("com.mysql.jdbc.Driver");
		String url ="jdbc:mysql://localhost:3307/ewa";
		String uname="root";
		String pass="3241";
		String query="select * from doctorcreds where UserName=?";
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setString(1, username);
		ResultSet rs=st.executeQuery();
		HttpSession session=req.getSession();
		boolean isTrue=rs.next();
		String Cpass="";
		if(isTrue) 
		{
			Cpass=rs.getString(4);
		}
		if(!isTrue) 
		{
			//no such user present
			
			session.setAttribute("DloginFail", "true");
			session.setAttribute("DloginMessage", "No such User present");
			res.sendRedirect("doctor_login.jsp");
		}
		else if(!Cpass.equals(password))	
		{
			session.setAttribute("DloginFail", "true");
			session.setAttribute("DloginMessage", "Wrong Password");
			res.sendRedirect("doctor_login.jsp");
		}
		else
		{
			session.setAttribute("DName", username);
			res.sendRedirect("DoctorHome.jsp");
		}
		
	}
}
