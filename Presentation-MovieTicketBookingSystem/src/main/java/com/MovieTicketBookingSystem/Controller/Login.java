package com.MovieTicketBookingSystem.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.MovieTicketBookingSystem.Beans.User;
import com.MovieTicketBookingSystem.Model.UserDB;

/**
 * Servlet implementation class Login
 */
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Login() {
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
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		User user = new User();
		user.setEmail(email);
		user.setPassword(password);

		UserDB ud = new UserDB();
		String s1 = ud.readData(user);

		if (s1.equalsIgnoreCase("Success")) {
			HttpSession session = request.getSession();
//			request.setAttribute("email", email);
//			request.getRequestDispatcher("/home.jsp").forward(request, response);
			session.setAttribute("email", email);
			response.sendRedirect("http://localhost:8080/MovieTicketBookingSystem/home.jsp");

		} else {
			request.setAttribute("errMessage", s1);
			request.getRequestDispatcher("/loginUser.jsp").forward(request, response);
			out.println("Invalid Email or Password");
		}

	}

}