package com.products;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.material.material;
import com.material.materialDBUtil;


@WebServlet("/ProductDeleteServlet")
public class ProductDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
String p_id= request.getParameter("p_id");
		
		boolean istrue;
		
		istrue=ProductDButil.Delete(p_id);
		if(istrue==true)
		{

		List<product>productdetails=ProductDButil.getproductdetails(p_id);
		request.setAttribute("productdetails", productdetails);
		RequestDispatcher dis=request.getRequestDispatcher("ProductInsert.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
	
	}

}
