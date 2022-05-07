package com.shopOrder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopSearchServlet")
public class ShopSearchServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
       
		
		String shop_order=request.getParameter("shop_order");
	
	
		boolean istrue;
		istrue=ShopOrderDBUtil.search(shop_order);

		if(istrue==true)
		{

		List<ShopOrder>shopdetails=ShopOrderDBUtil.getUpdateshoporder(shop_order);
		request.setAttribute("shopDetails", shopdetails);
		RequestDispatcher dis=request.getRequestDispatcher("ShopOrderaccount.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
