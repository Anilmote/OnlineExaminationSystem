package com.mankraft;

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


public class AdminRegisterServlet extends HttpServlet {
       
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter pw=response.getWriter();
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String pass=request.getParameter("password");
		String gen=request.getParameter("gender");
		String qualify=request.getParameter("qualify");
		//String date=request.getParameter("date");
		
		/*pw.println(fname);
		pw.println(lname);
		pw.println(email);
		pw.println(pass);
		pw.println(gen);
		pw.println(qualify);
		pw.println(date);*/
		
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3308/spring","root","ROOT");
			Statement ps=con.createStatement();
			ResultSet rs;
			int i=ps.executeUpdate("insert into Adminr values('"+fname+"','"+lname+"','"+email+"','"+pass+"','"+gen+"','"+qualify+"'"); 			
			
		}
		catch(Exception e){
			e.printStackTrace();
		
		response.sendRedirect("Adminsuccess.jsp");
	}

}
}
