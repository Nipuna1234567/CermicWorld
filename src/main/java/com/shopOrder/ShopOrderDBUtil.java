package com.shopOrder;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.shop.Shop;
import com.shop.ShopDBConnect;
import com.vehicle.vehicleConnection;



public class ShopOrderDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	//insert
		public static boolean insertShopOrder(String shop_order,String shop_name,String shop_no,String shop_address,String qty,String unite_price,String date,String sh_id,String p_id) {
					boolean done=false;
					
					
					
					try {
					
						
						
						con = ShopOrderConnect.getConnection();
						stmt = con.createStatement();
						
					
						
					
						
						String sql="insert into shop_order values('"+shop_order+"','"+shop_name+"','"+shop_no+"','"+shop_address+"','"+qty+"','"+unite_price+"','"+date+"','"+sh_id+"','"+p_id+"')";
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
						ShopOrderDBUtil.rs = rs;
					}

					//get
					public static List<ShopOrder>getshopdetails(String shop_order)
					{
						
						
						ArrayList<ShopOrder>ShopOrder=new ArrayList<>();
						try {
							
					String sql="Select * from shop_order where shop_order='"+shop_order+"'";
					rs=stmt.executeQuery(sql);
					
					if(rs.next())
					{
						String shop_order1=rs.getString(1);
						String shop_name=rs.getString(2);
						String shop_no=rs.getString(3);
						String shop_address=rs.getString(4);
						String qty=rs.getString(5);
						String unite_price=rs.getString(6);
						String date=rs.getString(7);
						String sh_id=rs.getString(8);
						String p_id=rs.getString(9);
						
						
						
						
						ShopOrder so=new ShopOrder(shop_order1,shop_name,shop_no,shop_address,qty,unite_price,date,sh_id,p_id);
						ShopOrder.add(so);
						
					}
					
					
					}
					catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				
				return ShopOrder;
				
					}


					public static boolean search(String shop_order) {
					
						try {
							con=ShopOrderConnect.getConnection();
							stmt = con.createStatement();
							String sql = "select * from shop_order where shop_order='"+shop_order+"'";
							rs = stmt.executeQuery(sql);
							if (rs.next()) {
							isSuccess = true;
							} else {
							isSuccess = false;
							}
							} catch (Exception e) {
							e.printStackTrace();
							}
						
							return isSuccess;
					
						
					}
					
				//Update	
				public static boolean ShopOrderUpdate(String shop_order,String shop_name,String shop_no,String shop_address,String qty,String unite_price,String date,String sh_id,String p_id) {

								try {
							
								con=ShopOrderConnect.getConnection();
								stmt=con.createStatement();
								String sql="update shop_order set shop_order='"+shop_order+"', shop_name='"+shop_name+"' , shop_no='"+shop_no+"' , shop_address='"+shop_address+"' , qty='"+qty+"' ,unite_price='"+unite_price+"' , date='"+date+"' , sh_id='"+sh_id+"' , p_id='"+p_id+"'"
								+"where shop_order='"+shop_order+"'" ;
								int rs=stmt.executeUpdate(sql);

								if(rs>0)
								{
								isSuccess=true;
								}
								else
								{
								isSuccess=false;
								}
								}catch(Exception e) {



								e.printStackTrace();
								}
								return isSuccess;
								}


					public static List<ShopOrder>getUpdateshoporder(String shop_order){
						

					ArrayList<ShopOrder>so1=new ArrayList<>();

					try {
					con=ShopOrderConnect.getConnection();
					stmt=con.createStatement();
					String sql="Select * from shop_order where shop_order='"+shop_order+"' ";
					rs=stmt.executeQuery(sql);



					while(rs.next()) {



					String shop1_order=rs.getString(1);
					String shop_name=rs.getString(2);
					String shop_no=rs.getString(3);
					String shop_address=rs.getString(4);
					String qty=rs.getString(5);
					String unite_price=rs.getString(6);
					String date=rs.getString(7);
					String sh_id=rs.getString(8);
					String p_id=rs.getString(9);
			

					ShopOrder so2=new ShopOrder(shop1_order,shop_name,shop_no,shop_address,qty,unite_price,date,sh_id,p_id);
					so1.add(so2);


					}


					}catch(Exception e)
					{
					e.printStackTrace();
					}

					return so1;


					}
					
				//Delete	
					public static boolean Delete(String shop_order) {
						try {
						con=ShopOrderConnect.getConnection();
						stmt=con.createStatement();
						String sql="Delete from shop_order where shop_order='"+shop_order+"' ";
						int rs=stmt.executeUpdate(sql);

						if(rs>0)
						{
						isSuccess=true;
						}
						else
						{
						isSuccess=false;
						}


						}

						catch(Exception e)
						{
						e.printStackTrace();
						}
						return isSuccess;	


					}
						
					
					
					
}