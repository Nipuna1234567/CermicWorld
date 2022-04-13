package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VehicleDeleteServlet")
public class VehicleDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
String vehi_no= request.getParameter("vehi_no");
		
		boolean istrue;
		
		istrue=vehicleDButil.Delete(vehi_no);
		if(istrue==true)
		{

		List<Vehicle>vehicledetails=vehicleDButil.getVehicledetails(vehi_no);
		request.setAttribute("vehicledetails", vehicledetails);
		RequestDispatcher dis=request.getRequestDispatcher("VehicleRegistration.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucess.jsp");
		dis2.forward(request,response);
		}
	}

}
