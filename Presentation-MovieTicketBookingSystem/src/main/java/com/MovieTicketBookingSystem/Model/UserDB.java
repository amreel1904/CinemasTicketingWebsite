package com.MovieTicketBookingSystem.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.MovieTicketBookingSystem.Beans.User;

public class UserDB {
	String s1 = null;
	
	public String insertUser(User rb) {
		myDatabase db = new myDatabase();
		Connection con = db.getCon();
		try {
			Statement stat = con.createStatement();
			stat.executeUpdate("insert into users(name,email,password) values('"+rb.getName()+"','"+rb.getEmail()+"','"+rb.getPassword()+"')");
			s1 = "Success";
		}catch (SQLException ex) {
			ex.printStackTrace();
		}
		return s1;
	}
	
	public String readData(User user) {
		myDatabase db = new myDatabase();
		String status = "";
		Connection con = db.getCon();
		ResultSet rs;
		try {
			Statement stat = con.createStatement();
			rs = stat.executeQuery("select email,password,user_id from users where email='"+user.getEmail()+"' and password='"+user.getPassword()+"'");
			
			if(rs.next()) {
				user.setId(rs.getInt("user_id"));
				status="Success";
			}
			else
				status="Invalid Email or Password";
		}catch (SQLException ex) {
			ex.printStackTrace();
		}
		
		return status;
	}
}