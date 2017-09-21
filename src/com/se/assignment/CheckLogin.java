package com.se.assignment;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.se.assignment.service.LoginService;

/**
 * Servlet implementation class CheckLogin
 */
@WebServlet("/CheckLogin")
public class CheckLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public CheckLogin() {
		super();
		// TODO Auto-generated constructor stub

	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		String uname = request.getParameter("username");
		String pass = request.getParameter("password");
		RequestDispatcher rd;
		LoginService service = new LoginService();

		Boolean result = service.authenticate(uname, pass);

		if (result) {
			rd = request.getRequestDispatcher("home.jsp");
			request.removeAttribute("error");
			request.setAttribute("username", uname);
			rd.forward(request, response);
			return;
		} else {
			rd = request.getRequestDispatcher("login.jsp");
			request.setAttribute("error", "Invalid Login ID or Pasword");
			rd.forward(request, response);
			return;
		}
	}

}
