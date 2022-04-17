package com.Order;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shop.Shop;
import com.shop.ShopDBConnect;
import com.shop.ShopDBUtil;




public class OrderDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	public static boolean insertOrder(String sup_oid,String qty,String date,String comp_id,String mat_id) {
		boolean done=false;
		
		
		
		try {
		
			
			
			con = Orderconnect.getConnection();
			stmt = con.createStatement();
			
		
			
		
			
			String sql="insert into addsup_order values('"+sup_oid+"','"+qty+"','"+date+"','"+comp_id+"','"+mat_id+"')";
			int rs=stmt.executeUpdate(sql);
		
			

			if(rs>0)
			{
				done=true;
			}
			else
			{
				done=false;
			}
			
			
	
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		return done;
		}

		
		public static ResultSet getRs() {
			return rs;
		}
		
		public static void setRs(ResultSet rs) {
			OrderDBUtil.rs = rs;
		}

		//get
		public static List<order>getorderdetails(String sup_oid)
		{
			
			
			ArrayList<order>order=new ArrayList<>();
			try {
				
		String sql="Select * from addsup_order where sup_oid='"+sup_oid+"'";
		rs=stmt.executeQuery(sql);
		
		if(rs.next())
		{
			String sup_oid1=rs.getString(1);
			String qty=rs.getString(2);
			String date=rs.getString(3);
			String comp_id=rs.getString(4);
			String mat_id=rs.getString(5);
			
			
			
			
			order orderDetails=new order(sup_oid1,qty,date,comp_id,mat_id);
			order.add(orderDetails);
			
		}
		
		
		}
		catch(Exception e)
	{
		e.printStackTrace();
	}
	
	
	
	return order;
	
			}
}



