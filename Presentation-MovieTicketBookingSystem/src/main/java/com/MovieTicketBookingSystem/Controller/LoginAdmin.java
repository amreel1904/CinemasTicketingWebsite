package com.MovieTicketBookingSystem.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MovieTicketBookingSystem.Beans.Admin;
import com.MovieTicketBookingSystem.Model.AdminDB;

/**
 * Servlet implementation class Login
 */
public class LoginAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginAdmin() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		PrintWriter out = response.getWriter();
		String name = request.getParameter("name");
		String password = request.getParameter("password");
		
		Admin admin = new Admin();
		admin.setName(name);
		admin.setPassword(password);
		
		AdminDB ud = new AdminDB();
		String s1 = ud.readData(admin);
		
		if(s1.equalsIgnoreCase("success")) {
			 HttpSession session = request.getSession();
	         session.setAttribute("name", name);
	         response.sendRedirect("http://localhost:8080/MovieTicketBookingSystem/AdminSys/Movies.jsp");
		}else {
			out.println("Invalid Name or Password");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}