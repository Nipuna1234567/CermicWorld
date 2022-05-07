package com.products;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/ProductInsertServlet")
public class ProductInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String p_id=request.getParameter("p_id");
		String p_type=request.getParameter("p_type");
		String p_date=request.getParameter("p_date");
		int p_qty= Integer.parseInt(request.getParameter("p_qty"));
		int  p_limited=Integer.parseInt(request.getParameter("p_limited"));
		String p_price=request.getParameter("p_price");
		
		
		boolean isTrue;
		
		isTrue=ProductDButil.insertproduct(p_id, p_type, p_date, p_qty, p_limited, p_price);
		
		if(isTrue == true) {
			
			
			List<product>productdetails=ProductDButil.getproductdetails(p_id);
			request.setAttribute("productdetails", productdetails);
			
			RequestDispatcher dis=request.getRequestDispatcher("ProductDisplay.jsp");
			dis.forward(request, response);
	}
	else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucsess.jsp");
			dis2.forward(request, response);
		}
	}

}
