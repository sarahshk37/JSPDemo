package com.ltil.services;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.Set;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.*;

import com.ltil.dao.UserDao;
import com.ltil.dao.UserDaoImpl;
import com.ltil.model.User;
import com.ltil.utilities.ConnectionManager;

@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private Connection connection = null;
	private UserDao dao = new UserDaoImpl();
	private RequestDispatcher rd;
	private HttpSession session = null;
	
   
    public LoginServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
		connection = ConnectionManager.getConnection();
		
		String un = request.getParameter("userid");
		String pw = request.getParameter("password");
		User user = new User(un,pw);
		dao.validateUser(user);
		
		if(dao.validateUser(user)) 
		{
			session = request.getSession();
			session.setAttribute("user", user);
			rd =request.getRequestDispatcher("success.jsp");
			rd.forward(request,response);
		}
		else
		{
			out.println("<b> Invalid credentials.. try again</b>");
			rd = request.getRequestDispatcher("Index.jsp");
			rd.include(request, response);
		}
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
