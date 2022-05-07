package com.Supplier;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/SupplierCompanyServelet")
public class SupplierCompanyServelet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public SupplierCompanyServelet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String comp_id = request.getParameter("comp_id");
		String comp_name = request.getParameter("comp_name");
		String comp_type = request.getParameter("comp_type");
		String comp_phone = request.getParameter("comp_phone");
		String comp_address = request.getParameter("comp_address");
		String comp_email = request.getParameter("comp_email");
		
		boolean isTrue;
		
		isTrue =SupplierCompanyDBUtil.insertSupplierCompany(comp_id, comp_name, comp_type,comp_phone, comp_address,comp_email);
		
		if(isTrue == true) {
			
			List<SupplierCompany> SupplierCompanyDetails = SupplierCompanyDBUtil.getsuppliercompanydetails(comp_id);
			request.setAttribute("SupplierCompanyDetails", SupplierCompanyDetails);
			
			RequestDispatcher dis = request.getRequestDispatcher("Supplieraccount.jsp");
			dis.forward(request, response);
		} else {
			RequestDispatcher dis2 = request.getRequestDispatcher("Unsucsess.jsp");
			dis2.forward(request, response);
		}
		
		
	}

}
