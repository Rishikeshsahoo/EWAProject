package com.rishikesh;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class ProcessSlots extends HttpServlet {
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String DDname=request.getParameter("Dname").toString();
		int slots=Integer.parseInt(request.getParameter("Dslots"));
		String prbString=request.getParameter("problem").toString();
		HttpSession session= request.getSession();

		slots--;
		if(slots<0) 
		{
			session.setAttribute("bookmessage","There was a problem, Please try again later");
			session.setAttribute("messageflag","danger");
			response.sendRedirect("problem?bookslots=karo&problems="+prbString);
			return;
		}
		else {
		try {
			int cat=UpdateSlots(DDname, slots);
			session.setAttribute("bookmessage","Slot was successfully booked :) !!");
			session.setAttribute("messageflag","success");
			response.sendRedirect("problem?bookslots=karo&problems="+prbString);
			
		} catch (ClassNotFoundException | SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		}
		
		
	}
	public int UpdateSlots(String DDname,int Dslots) throws SQLException, ClassNotFoundException 
	{
		
		Class.forName("com.mysql.jdbc.Driver");
		String url="jdbc:mysql://localhost:3307/ewa";
		String uname="root";
		String pass="3241";
		String query="update doctor set slots=? where name=?;";
		Connection con=DriverManager.getConnection(url,uname,pass);
		PreparedStatement st=con.prepareStatement(query);
		st.setInt(1,Dslots);
		st.setString(2, DDname);
		st.executeUpdate();
		st.close();
		con.close();
		return 1;
	}
	

}
