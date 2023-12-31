package com.MovieTicketBookingSystem.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.MovieTicketBookingSystem.Beans.User;
import com.MovieTicketBookingSystem.Model.UserDB;

/**
 * Servlet implementation class Register
 */
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		User rb = new User();
		
		rb.setName(name);
		rb.setEmail(email);
		rb.setPassword(password);
		
		UserDB ud = new UserDB();
		String s1 = ud.insertUser(rb);
		if(s1.equalsIgnoreCase("Success")) {
			response.sendRedirect("loginUser.jsp");
		}else {
			out.println("Invalid email or password");
		}
		
		System.out.println(s1);
		// out.println(name);
		// out.println(email);
		// out.println(password);
	}

}
