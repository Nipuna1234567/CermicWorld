package com.shop;

import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/ShopUpdateServlet")
public class ShopUpdateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String sh_id=request.getParameter("sh_id");
		String sh_name=request.getParameter("sh_name");
		String sh_phone=request.getParameter("sh_phone");
		String sh_address=request.getParameter("sh_address");

		boolean istrue;
		istrue=ShopDBUtil.ShopUpdate(sh_id, sh_name, sh_phone, sh_address);



		if(istrue==true)
		{



		List<Shop>shopdetails=ShopDBUtil.getshopdetails(sh_id);
		request.setAttribute("shopDetails", shopdetails);

		RequestDispatcher dis=request.getRequestDispatcher("Success.jsp");
		dis.forward(request,response);
		}
		else
		{
		RequestDispatcher dis2=request.getRequestDispatcher("Unsucsess.jsp");
		dis2.forward(request,response);
		}

		}




		}