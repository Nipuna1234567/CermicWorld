package com.material;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/MaterialUpdateServlet")
public class MaterialUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String mat_id=request.getParameter("mat_id");
		String mat_type=request.getParameter("mat_type");
		String mat_name=request.getParameter("mat_name");
		String mat_use=request.getParameter("mat_use");
		
		int mat_qty= Integer.parseInt(request.getParameter("mat_qty"));
		int mat_limit= Integer.parseInt(request.getParameter("mat_limit"));
	
		String mat_price=request.getParameter("mat_price");
		
		boolean istrue;
		istrue=materialDBUtil.Updatematerial(mat_id, mat_type, mat_name, mat_use,mat_qty, mat_limit, mat_price);

		if(istrue==true)
		{

		List<material>materialdetails=materialDBUtil.getmaterialdetails(mat_id);
		request.setAttribute("materialdetails", materialdetails);
		
		RequestDispatcher dis=request.getRequestDispatcher("MaterialDisplay.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}
	

		
	}


