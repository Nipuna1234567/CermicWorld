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
	//insert
	public static boolean insertmaterial(String mat_id,String mat_type,String mat_name,int mat_qty,int mat_limit, String mat_price) {
				boolean done=false;
				
				
				
				try {
				
					int mat_less=mat_limit-mat_qty;
					
					con = DBconnect.getConnection();
					stmt = con.createStatement();
					
				
					
				
					
					String sql="insert into raw_material values('"+mat_id+"','"+mat_type+"','"+mat_name+"','"+mat_qty+"','"+mat_limit+"','"+mat_less+"','"+mat_price+"')";
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

				//get
				public static List<material>getmaterialdetails(String mat_id)
				{
					
					
					ArrayList<material>material=new ArrayList<>();
					try {
						
				String sql="Select * from raw_material where mat_id='"+mat_id+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String mate_id=rs.getString(1);
					String mat_type=rs.getString(2);
					String mat_name=rs.getString(3);
					String mat_qty=rs.getString(4);
					String mat_limit=rs.getString(5);
					String mat_less=rs.getString(6);
					String mat_price=rs.getString(7);
					
					
					
					material rm=new material(mat_id,mat_type,mat_name,mat_qty,mat_limit,mat_less,mat_price);
					material.add(rm);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return material;
			
					}
}
