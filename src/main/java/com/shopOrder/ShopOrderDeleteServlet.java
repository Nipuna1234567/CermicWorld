package com.shopOrder;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopOrderDeleteServlet")
public class ShopOrderDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String shop_order= request.getParameter("shop_order");

		boolean istrue;

		istrue=ShopOrderDBUtil.Delete(shop_order);
		if(istrue==true)
		{



		List<ShopOrder>Shopdetails=ShopOrderDBUtil.getshopdetails(shop_order);
		request.setAttribute("ShopDetails", Shopdetails);
		RequestDispatcher dis=request.getRequestDispatcher("ShopOrderdetailsView.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
