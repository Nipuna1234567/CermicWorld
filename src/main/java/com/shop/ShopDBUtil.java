package com.shop;


import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class ShopDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	//insert
		public static boolean insertShop(String sh_id,String sh_name,String sh_phone,String sh_address) {
					boolean done=false;
					
					
					
					try {
					
						
						
						con = ShopDBConnect.getConnection();
						stmt = con.createStatement();
						
					
						
					
						
						String sql="insert into add_shop values('"+sh_id+"','"+sh_name+"','"+sh_phone+"','"+sh_address+"')";
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
						ShopDBUtil.rs = rs;
					}

					//get
					public static List<Shop>getshopdetails(String sh_id)
					{
						
						
						ArrayList<Shop>Shop=new ArrayList<>();
						try {
							
					String sql="Select * from add_shop where sh_id='"+sh_id+"'";
					rs=stmt.executeQuery(sql);
					
					if(rs.next())
					{
						String sh_id1=rs.getString(1);
						String sh_name=rs.getString(2);
						String sh_phone=rs.getString(3);
						String sh_address=rs.getString(4);
						
						
						
						
						Shop sh=new Shop(sh_id1,sh_name,sh_phone,sh_address);
						Shop.add(sh);
						
					}
					
					
					}
					catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				
				return Shop;
				
						}
					
		    public static boolean ShopUpdate(String sh_id,String sh_name,String sh_phone,String sh_address) {

						try {
					
						con=ShopDBConnect.getConnection();
						stmt=con.createStatement();
						String sql="update add_shop set sh_id='"+sh_id+"', sh_name='"+sh_name+"' , sh_phone='"+sh_phone+"' , sh_address='"+sh_address+"'"
						+"where sh_id='"+sh_id+"'" ;
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

					
						public static List<Shop>getshopupdate(String sh_id){
						

						ArrayList<Shop>sh1=new ArrayList<>();

						try {
						con=ShopDBConnect.getConnection();
						stmt=con.createStatement();
						String sql="Select * from add_shop where sh_id='"+sh_id+"' ";
						rs=stmt.executeQuery(sql);



						while(rs.next()) {



						String sh1_id=rs.getString(1);
						String sh_name=rs.getString(2);
						String sh_phone=rs.getString(3);
						String sh_address=rs.getString(4);
				

						Shop sh2=new Shop(sh_id,sh_name,sh_phone,sh_address);
						sh1.add(sh2);


						}


						}catch(Exception e)
						{
						e.printStackTrace();
						}

						return sh1;


						}
						
				
			 public static boolean Delete(String sh_id) {
							try {
							con=ShopDBConnect.getConnection();
							stmt=con.createStatement();
							String sql="Delete from add_shop where sh_id='"+sh_id+"' ";
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