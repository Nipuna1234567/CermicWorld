package com.vehicle;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/VehicleSearchServlet")
public class VehicleSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
String vehi_no=request.getParameter("vehi_no");
	
	
		

		boolean istrue;
		istrue=vehicleDButil.search(vehi_no);

		if(istrue==true)
		{

		List<Vehicle>vehicledetails=vehicleDButil.getUpdateVehicle(vehi_no);
		request.setAttribute("vehicledetails", vehicledetails);
		RequestDispatcher dis=request.getRequestDispatcher("VehicleDisplay.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
