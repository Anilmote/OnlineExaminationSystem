package com.mankraft;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class RegisterStaffServlet {
	public static Connection getConnection() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3308/spring", "root", "root");

		} catch (Exception e) {
			System.out.println(e);
		}
		return con;

	}

	public static int save(Staff s) {

		int status = 0;

		try {
			Connection con = getConnection();
			PreparedStatement pst = con.prepareStatement("insert into MKTECH150(fname,lname,email,password,gender,qualify,date,experience) values(?,?,?,?,?,?,?,?)");
			pst.setString(1, s.getFname());
			pst.setString(2, s.getLname());
			pst.setString(3, s.getEmail());
			pst.setString(4, s.getPassword());
			pst.setString(5, s.getGender());
			pst.setString(6, s.getQualify());
			pst.setInt(7, s.getDate());
			pst.setInt(8, s.getExperience());
			status=pst.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;

	}
	public static int update(Staff s){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("update MKTECH150 set fname=?,lname=?,email=?,password=?,gender=?,qualify=?,date=?,experience=? where reg_id=?");
			ps.setString(1,s.getFname());
			ps.setString(2,s.getLname());
			ps.setString(3,s.getEmail());
			ps.setString(4,s.getPassword());
			ps.setString(5,s.getGender());
			ps.setString(6,s.getQualify());
			ps.setInt(7,s.getDate());
			ps.setInt(8,s.getExperience());
			ps.setInt(9,s.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}
		return status;
	}
	public static int delete(Staff s){
		int status=0;
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("delete from MKTECH150 where reg_id=?");
			ps.setInt(1,s.getId());
			status=ps.executeUpdate();
		}catch(Exception e){System.out.println(e);}

		return status;
	}
	public static List<Staff> getAllRecords(){
		List<Staff> list=new ArrayList<Staff>();
		
		try{
			Connection con=getConnection();
			PreparedStatement ps=con.prepareStatement("select * from MKTECH150");
			ResultSet rs=ps.executeQuery();
			while(rs.next()){
				Staff s=new Staff();
				s.setId(rs.getInt("id"));
				s.setFname(rs.getString("name"));
				s.setPassword(rs.getString("password"));
				s.setEmail(rs.getString("email"));
				s.setGender(rs.getString("gender"));
				s.setQualify(rs.getString("qualify"));
				s.setDate(rs.getInt("date"));
				s.setExperience(rs.getInt("experience"));
				list.add(s);
			}
		}catch(Exception e){System.out.println(e);}
		return list;
	}
	
	}


