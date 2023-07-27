package com.MovieTicketBookingSystem.Beans;

public class User {
	private int userId;
	private String name;
	private String email;
	private String password;

	public int getId() {
		return userId;
	}

	public void setId(int userId) {
		this.userId = userId;
	}
	
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}
	
	public void setEmail(String email) {
		this.email = email;
	}
	
	public String getPassword() {
		return password;
	}
	
	public void setPassword(String password) {
		this.password = password;
	}
}