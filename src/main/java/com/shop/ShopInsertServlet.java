package com.shop;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopInsertServlet")
public class ShopInsertServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ShopInsertServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		
		
		
		
		String sh_id = request.getParameter("sh_id");
		String sh_name = request.getParameter("sh_name");
		String sh_phone= request.getParameter("sh_phone");
		String sh_address = request.getParameter("sh_address");
		
		boolean isTrue;
		
		isTrue =ShopDBUtil.insertShop(sh_id, sh_name, sh_phone,sh_address);
		
		if(isTrue == true) {
			List<Shop> shopDetails = ShopDBUtil.getshopdetails(sh_id);
			request.setAttribute("shopDetails", shopDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Success.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
			dis2.forward(request, response);
		}
		
	}

}
