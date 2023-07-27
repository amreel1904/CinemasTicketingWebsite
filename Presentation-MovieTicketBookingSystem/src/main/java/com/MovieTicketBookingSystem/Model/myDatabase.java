package com.MovieTicketBookingSystem.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class myDatabase {
	
	Connection con = null;
	public Connection getCon() {
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://localhost:3306/movieticketdb";
			String username = "root";
			String password = "1234";
			con = DriverManager.getConnection(url, username, password);
			
		} catch(ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch(SQLException ex) {
			ex.printStackTrace();
		}
		return con;
	}
}