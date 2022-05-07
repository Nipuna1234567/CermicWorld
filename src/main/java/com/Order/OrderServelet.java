package com.Order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.Supplier.SupplierCompany;
import com.Supplier.SupplierCompanyDBUtil;
import com.shop.Shop;
import com.shop.ShopDBUtil;

;


@WebServlet("/OrderServelet")
public class OrderServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	 public OrderServelet() {
	        super();
	        // TODO Auto-generated constructor stub
	    }

		
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			// TODO Auto-generated method stub
			response.getWriter().append("Served at: ").append(request.getContextPath());
		}


		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			
			
			
			
			
			
			String sup_oid = request.getParameter("sup_oid");
			String qty = request.getParameter("qty");
			String date= request.getParameter("date");
			String comp_id = request.getParameter("comp_id");
			String mat_id = request.getParameter("mat_id");
			
			boolean isTrue;
			
			isTrue =OrderDBUtil.insertOrder(sup_oid, qty, date,comp_id,mat_id);
			
			if(isTrue == true) {
				List<order> orderdetails = OrderDBUtil.getorderdetails(sup_oid);
				request.setAttribute("orderdetails", orderdetails);
				
				RequestDispatcher dis = request.getRequestDispatcher("Orderaccount.jsp");
				dis.forward(request, response);
			} else {
				RequestDispatcher dis2 = request.getRequestDispatcher("Unsuccess.jsp");
				dis2.forward(request, response);
			}
			
		}

	}
