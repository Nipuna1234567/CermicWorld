package com.Transport;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/TransportUpdateServlet")
public class TransportUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String t_id=request.getParameter("t_id");
		String t_distance=request.getParameter("t_distance");
		String t_price=request.getParameter("t_price");
		String t_amount=request.getParameter("t_amount");
		String date=request.getParameter("date");
		String vehi_no=request.getParameter("vehi_no");
		String shop_order=request.getParameter("shop_order");
		

		boolean istrue;
		istrue=TransportDButil.UpdateTransport(t_id, t_distance, t_price, t_amount, date, vehi_no, shop_order);

		if(istrue==true)
		{

		List<Transport>Transportdetails=TransportDButil.getTransportdetails(t_id);
		request.setAttribute("Transportdetails", Transportdetails);
		RequestDispatcher dis=request.getRequestDispatcher("TransportDisplay.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("unsuccess.jsp");
		dis2.forward(request,response);
		}

	}

	

}
