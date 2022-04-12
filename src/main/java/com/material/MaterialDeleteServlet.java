package com.material;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MaterialDeleteServlet")
public class MaterialDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String mat_id= request.getParameter("mat_id");
		
		boolean istrue;
		
		istrue=materialDBUtil.Delete(mat_id);
		if(istrue==true)
		{

		List<material>materialdetails=materialDBUtil.getmaterialdetails(mat_id);
		request.setAttribute("materialdetails", materialdetails);
		RequestDispatcher dis=request.getRequestDispatcher("MaterialInsert.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
	}
		
	

}
