package com.material;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class materialDBUtil {
	
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	
	//insert materials
	
	public static boolean insertmaterial(String mat_id,String mat_type,String mat_name,String mat_use,int mat_qty,int mat_limit, String mat_price) {
				boolean done=false;
				
				
				
				try {
				
					int mat_less=mat_limit-mat_qty;
					
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
				
					
				
					
					String sql="insert into raw_material values('"+mat_id+"','"+mat_type+"','"+mat_name+"','"+mat_use+"','"+mat_qty+"','"+mat_limit+"','"+mat_less+"','"+mat_price+"')";
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
					materialDBUtil.rs = rs;
				}

				//get materials 
				
				public static List<material>getmaterialdetails(String mat_id)
				{
					
					
					ArrayList<material>material=new ArrayList<>();
					try {
						
				String sql="Select * from raw_material where mat_id='"+mat_id+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String Mat_id=rs.getString(1);
					String Mat_type=rs.getString(2);
					String Mat_name=rs.getString(3);
					String Mat_use=rs.getString(4);
					String Mat_qty=rs.getString(5);
					String Mat_limit=rs.getString(6);
					String Mat_less=rs.getString(7);
					String Mat_price=rs.getString(8);
					
					
					
					material rm=new material(mat_id,Mat_type,Mat_name,Mat_use,Mat_qty,Mat_limit,Mat_less,Mat_price);
					material.add(rm);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return material;
			
					}
				
				
				//update materials 
				
				public static boolean Updatematerial(String mat_id,String mat_type,String mat_name,String mat_use,int mat_qty,int mat_limit, String mat_price) {

					try {
						int mat_less=mat_limit-mat_qty;

					con=DBconnect.getConnection();
					stmt=con.createStatement();
					String sql="Update raw_material set mat_id='"+mat_id+"', mat_qty='"+mat_qty+"' ,mat_limit='"+mat_limit+"' ,mat_less='"+mat_less+"'"
					+"where mat_id='"+mat_id+"'" ;
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
				
				public static List<material>getUpdatematerial(String mat_id){
					//int convertid1=Integer.parseInt(id);

					ArrayList<material>rm1=new ArrayList<>();
					
					try {
					con=DBconnect.getConnection();
					stmt=con.createStatement();
					String sql="Select * from raw_material where mat_id='"+mat_id+"' ";
					rs=stmt.executeQuery(sql);

					while(rs.next()) {

						String Mat_id=rs.getString(1);
						String Mat_type=rs.getString(2);
						String Mat_name=rs.getString(3);
						String Mat_use=rs.getString(4);
						String Mat_qty=rs.getString(5);
						String Mat_limit=rs.getString(6);
						String Mat_less=rs.getString(7);
						String Mat_price=rs.getString(8);


					material rm2=new material(mat_id,Mat_type,Mat_name,Mat_use,Mat_qty,Mat_limit,Mat_less,Mat_price);
					rm1.add(rm2);

					}

					}catch(Exception e)
					{
					e.printStackTrace();
					}

					return rm1;


					}
				
				//delete material from the table
				
				public static boolean Delete(String mat_id) {
					try {
						con=DBconnect.getConnection();
						stmt=con.createStatement();
						String sql="Delete from raw_material where mat_id='"+mat_id+"' ";
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
