package com.shop;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopDeleteServlet")
public class ShopDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String sh_id= request.getParameter("sh_id");

		boolean istrue;

		istrue=ShopDBUtil.Delete(sh_id);
		if(istrue==true)
		{



		List<Shop>Shopdetails=ShopDBUtil.getshopdetails(sh_id);
		request.setAttribute("ShopDetails", Shopdetails);
		RequestDispatcher dis=request.getRequestDispatcher("ShopdetailsView.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
