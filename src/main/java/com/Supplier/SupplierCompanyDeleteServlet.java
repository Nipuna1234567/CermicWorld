package com.Supplier;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/SupplierCompanyDeleteServlet")
public class SupplierCompanyDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		String comp_id= request.getParameter("comp_id");

		boolean istrue;

		istrue=SupplierCompanyDBUtil.Delete(comp_id);
		if(istrue==true)
		{



		List<SupplierCompany>suppliercompanydetails=SupplierCompanyDBUtil.getsuppliercompanydetails(comp_id);
		request.setAttribute("suppliercompanyDetails", suppliercompanydetails);
		RequestDispatcher dis=request.getRequestDispatcher("SupplierCompany.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}
		
	}

}
