package com.products;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import com.material.DBconnect;
import com.material.material;
import com.vehicle.vehicleConnection;

public class ProductDButil {
	
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	//insert products
	
	public static boolean insertproduct(String p_id,String p_type,String p_date,int p_qty,int p_limited, String p_price) {
				boolean done=false;
				
				
				
				try {
				
					int p_less=p_limited-p_qty;
					
					con = ProductConnection.getConnection();
					stmt = con.createStatement();
					
				
					
				
					
					String sql="insert into product values('"+p_id+"','"+p_type+"','"+p_date+"','"+p_qty+"','"+p_limited+"','"+p_less+"','"+p_price+"')";
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
					ProductDButil.rs = rs;
				}

				//get product details 
				
				public static List<product>getproductdetails(String p_id)
				{
					
					
					ArrayList<product>product=new ArrayList<>();
					try {
						
				String sql="Select * from product where p_id='"+p_id+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String p_id1=rs.getString(1);
					String p_type=rs.getString(2);
					String p_date=rs.getString(3);
					String p_qty=rs.getString(4);
					String p_limited=rs.getString(5);
					String p_less=rs.getString(6);
					String p_price=rs.getString(7);
					
					
					
					product rm=new product(p_id,p_type,p_date,p_qty,p_limited,p_less,p_price);
					product.add(rm);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return product;
			
					}
				
				
	//update materials 
				
				public static boolean Updateproduct(String p_id,String p_type,String p_date,int p_qty,int p_limited, String p_price) {

					try {
						int p_less=p_limited-p_qty;

					con=ProductConnection.getConnection();
					stmt=con.createStatement();
					String sql="Update product set p_id='"+p_id+"', p_qty='"+p_qty+"' ,p_limited='"+p_limited+"' ,p_less='"+p_less+"'"
					+"where p_id='"+p_id+"'" ;
					int rs=stmt.executeUpdate(sql);


					if(rs>0)
					{
					done=true;
					}
					else
					{
					done=false;
					}
					}catch(Exception e) {

					e.printStackTrace();
					}
					return done;
					}
				
				public static List<product>getUpdatproduct(String p_id){
					//int convertid1=Integer.parseInt(id);

					ArrayList<product>rm1=new ArrayList<>();
					
					try {
					con=ProductConnection.getConnection();
					stmt=con.createStatement();
					String sql="Select * from product where p_id='"+p_id+"' ";
					rs=stmt.executeQuery(sql);

					while(rs.next()) {

						String p_id1=rs.getString(1);
						String p_type=rs.getString(2);
						String p_date=rs.getString(3);
						String p_qty=rs.getString(4);
						String p_limited=rs.getString(5);
						String p_less=rs.getString(6);
						String p_price=rs.getString(7);
						
						
						
					

					product rm2=new product(p_id,p_type,p_date,p_qty,p_limited,p_less,p_price);
					rm1.add(rm2);

					}

					}catch(Exception e)
					{
					e.printStackTrace();
					}

					return rm1;


					}
				
				//search
				public static boolean search(String p_id) {
					try {
					con=ProductConnection.getConnection();
					stmt = con.createStatement();
					String sql = "select * from product where p_id='"+p_id+"'";
					rs = stmt.executeQuery(sql);
					if (rs.next()) {
					done = true;
					} else {
					done = false;
					}
					} catch (Exception e) {
					e.printStackTrace();
					}
					return done;
					}
				
	//delete product from the table
				
				public static boolean Delete(String p_id) {
					try {
						con=ProductConnection.getConnection();
						stmt=con.createStatement();
						String sql="Delete from product where p_id='"+p_id+"' ";
						int rs=stmt.executeUpdate(sql);
						
						if(rs>0)
						{
						done=true;
						}
						else
						{
						done=false;
						}

						}
					
					catch(Exception e)
					{
					e.printStackTrace();
					}
					return done;
				


				}
				

}
