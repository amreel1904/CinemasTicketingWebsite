package com.MovieTicketBookingSystem.Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.MovieTicketBookingSystem.Beans.Admin;
public class AdminDB {
	String s1 = null;

	public String insertAdmin(Admin rb) {
		myDatabase db = new myDatabase(); 
		Connection con = db.getCon();
		try {
			Statement stat = con.createStatement();
			stat.executeUpdate("insert into admin(id,name,password) values('" + rb.getId() + "','" + rb.getName()
					+ "','" + rb.getPassword() + "')");
			s1 = "Data Insert Successfully";
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return s1;
	}

	public String readData(Admin admin) {
		myDatabase db = new myDatabase();
		Connection con = db.getCon();
		ResultSet rs;
		try {
			Statement stat = con.createStatement();
			rs = stat.executeQuery("select email,password from users where email='" + admin.getId()
					+ "' and password='" + admin.getPassword() + "'");
			rs.next();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}

		return "Success";
	}
}
