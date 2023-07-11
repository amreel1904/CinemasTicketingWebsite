package com.Ateh.Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class myDatabase {

	Connection con = null;

	public Connection getCon() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/movie", "root", "root");
			System.out.println(con);
		} catch (ClassNotFoundException ex) {
			ex.printStackTrace();
		} catch (SQLException ex) {
			ex.printStackTrace();
		}
		return con;
	}
}