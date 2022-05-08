package com.Transport;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/TransportDeleteServlet")
public class TransportDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
String t_id= request.getParameter("t_id");
		
		boolean istrue;
		
		istrue=TransportDButil.Delete(t_id);
		if(istrue==true)
		{

		List<Transport>Transportdetails=TransportDButil.getTransportdetails(t_id);
		request.setAttribute("Transportdetails", Transportdetails);
		RequestDispatcher dis=request.getRequestDispatcher("TransportOrderInsert.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}
	}

}
