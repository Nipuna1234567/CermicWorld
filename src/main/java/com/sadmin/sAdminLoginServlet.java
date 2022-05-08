package com.sadmin;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oadmin.oAdminDButil;
import com.oadmin.oadmin;


@WebServlet("/sAdminLoginServlet")
public class sAdminLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String user_name= request.getParameter("user_name");
		String password = request.getParameter("password");
		boolean isTrue;
		
		isTrue = sAdminDButil.login(user_name, password);
		
		if (isTrue == true) {
			List<sadmin> adminDetails = sAdminDButil.getsadmin(user_name);
			request.setAttribute("adminDetails", adminDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SupplierHome.jsp");
			dis.forward(request, response);
		} else {
		
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucsess.jsp");
			dis2.forward(request, response);
		}
	
	}

}
