package com.shopOrder;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopOrderInsertServlet")
public class ShopOrderInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public ShopOrderInsertServlet() {
        super();
        
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
		
		

		String shop_order = request.getParameter("shop_order");
		String shop_name = request.getParameter("shop_name");
		String shop_no= request.getParameter("shop_no");
		String shop_address = request.getParameter("shop_address");
		String qty= request.getParameter("qty");
		String unite_price= request.getParameter("unite_price");
		String date= request.getParameter("date");
		String sh_id= request.getParameter("sh_id");
		String p_id= request.getParameter("p_id");	
		
		
		boolean isTrue;
		
		isTrue =ShopOrderDBUtil.insertShopOrder(shop_order, shop_name, shop_no,shop_address,qty,unite_price,date,sh_id,p_id);
		
		if(isTrue == true) {
			List<ShopOrder> shopDetails = ShopOrderDBUtil.getshopdetails(shop_order);
			request.setAttribute("shopDetails", shopDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("SalesHome.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}	