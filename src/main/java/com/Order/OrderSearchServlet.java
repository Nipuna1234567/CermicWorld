package com.Order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/OrderSearchServlet")
public class OrderSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String sup_oid=request.getParameter("sup_oid");
	
	
		

		boolean istrue;
		istrue=OrderDBUtil.search(sup_oid);

		if(istrue==true)
		{

			List<order> orderdetails = OrderDBUtil.getorderdetails(sup_oid);
			request.setAttribute("orderdetails", orderdetails);
		RequestDispatcher dis=request.getRequestDispatcher("Orderaccount.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
