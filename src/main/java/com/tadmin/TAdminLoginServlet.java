package com.tadmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.admin.AdminDButil;
import com.admin.admin;


@WebServlet("/TAdminLoginServlet")
public class TAdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user_name= request.getParameter("user_name");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = tadminDButil.login(user_name, password);
		
		if (isTrue == true) {
			List<admin> adminDetails = AdminDButil.getadmin(user_name);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("TransportHome.jsp");
			dis.forward(request, response);
		} else {
		
			RequestDispatcher dis2 = request.getRequestDispatcher("tAdminLogin.jsp");
			dis2.forward(request, response);
		}
	}
	}

