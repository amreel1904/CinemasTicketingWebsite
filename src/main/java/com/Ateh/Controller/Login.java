package com.JavaWebApplication.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.JavaWebApplication.Beans.User;
import com.JavaWebApplication.Model.UserDB;

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
		PrintWriter out = response.getWriter();
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		
		if(email.equals("muhi")&& password.equals("1234")) {
			response.sendRedirect("jsp/Welcome.jsp");
		}
		else {
			out.println("Sorry! Invalid Email or Password");
			response.sendRedirect("jsp/login.jsp");
			RequestDispatcher rd=request.getRequestDispatcher("jsp/login.jsp");
			rd.include(request, response);
		}
		
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		
		UserDB ud = new UserDB();
		String s1 = ud.readData(user);
		
		if(s1.equalsIgnoreCase("success")) {
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			response.sendRedirect("http://localhost:8080/JavaWebApplication/jsp/Welcome.jsp");
			request.setAttribute("Email", "muhilan@gmail.com");
			request.getRequestDispatcher("jsp/Welcome.jsp").forward(request,response);
		}else {
			out.println("Invalid Email or Password");
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String email = request.getParameter("email");
		String password = request.getParameter("password");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/javawebapplication?useSSL=false", "root", "Zaq12wsx!");
			PreparedStatement pst = con.prepareStatement("select email,password from user where email='" + email + "' and password='" + password + "'");
			ResultSet rs = pst.executeQuery();
			if(rs.next()) {
				session.setAttribute("email", rs.getString("email"));

				dispatcher = request.getRequestDispatcher("jsp/Welcome.jsp");
			}else {
				session.setAttribute("status", "failed");

				dispatcher = request.getRequestDispatcher("jsp/login.jsp");
			}
			dispatcher.forward(request, response);
		} catch(Exception ex){
			ex.printStackTrace();
		}
	}

}
