package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class VehicleRegistrationservlet
 */
@WebServlet("/VehicleRegistrationservlet")
public class VehicleRegistrationservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String vehi_no=request.getParameter("vehi_no");
		String vehi_type=request.getParameter("vehi_type");
		String vehi_brand=request.getParameter("vehi_brand");
		String chassi_no=request.getParameter("chassi_no");
		String vehi_mileage=request.getParameter("vehi_mileage");
		String ins_upto=request.getParameter("ins_upto");
		String emi_upto=request.getParameter("emi_upto");
		
		boolean isTrue;
		
		isTrue=vehicleDButil.insertvehicle(vehi_no, vehi_type, vehi_brand, chassi_no, vehi_mileage, ins_upto, emi_upto);
		
		if(isTrue == true) {
			
			List<Vehicle>vehicledetails=vehicleDButil.getVehicledetails(vehi_no);
			request.setAttribute("vehicledetails", vehicledetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("TransportHome.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucsess.jsp");
			dis2.forward(request, response);
		}
		
	
	}
	}


