package com.Transport;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;




@WebServlet("/TransportInsertServlet")
public class TransportInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String t_id=request.getParameter("t_id");
		int t_distance= Integer.parseInt(request.getParameter("t_distance"));
		int t_price= Integer.parseInt(request.getParameter("t_price"));
		String date=request.getParameter("date");
		String vehi_no=request.getParameter("vehi_no");
		String shop_order=request.getParameter("shop_order");
		String nic=request.getParameter("nic");
		boolean isTrue;
		
		isTrue=TransportDButil.insertTransport(t_id, t_distance, t_price, date, vehi_no, shop_order);
		
		if(isTrue == true) {
			
			List<Transport>Transportdetails=TransportDButil.getTransportdetails(t_id);
			request.setAttribute("Transportdetails", Transportdetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("TransportDisplay.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
		}
	}
	

}
