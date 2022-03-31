package com.vehicle;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class vehicleDButil {

	
	private static boolean done;
	private static Connection con=null;
	private static Statement stmt=null;
	private static ResultSet rs=null;
	
	//insert
	public static boolean insertvehicle(String vehi_no,String vehi_type,String vehi_brand,String chassi_no,String vehi_mileage,String ins_upto,String emi_upto) {
				boolean done=false;
				
				
				
				try {
					
					con = vehicleConnection.getConnection();
					stmt = con.createStatement();
					
					String sql="insert into transport_vehicle values('"+vehi_no+"','"+vehi_type+"','"+vehi_brand+"','"+chassi_no+"','"+vehi_mileage+"','"+ins_upto+"','"+emi_upto+"')";
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
					vehicleDButil.rs = rs;
				}
				
				
				//get
				public static List<Vehicle>getVehicledetails(String vehi_no)
				{
					
					
					ArrayList<Vehicle>vehicle=new ArrayList<>();
					try {
						
				String sql="Select * from transport_vehicle where vehi_no='"+vehi_no+"'";
				rs=stmt.executeQuery(sql);
				
				if(rs.next())
				{
					String vehi1_no=rs.getString(1);
					String vehi_type=rs.getString(2);
					String vehi_brand=rs.getString(3);
					String chassi_no=rs.getString(4);
					String vehi_mileage=rs.getString(5);
					String ins_upto=rs.getString(6);
					String emi_upto=rs.getString(7);
					
					Vehicle vh=new Vehicle(vehi_no,vehi_type,vehi_brand,chassi_no,vehi_mileage,ins_upto,emi_upto);
					vehicle.add(vh);
					
				}
				
				
				}
				catch(Exception e)
			{
				e.printStackTrace();
			}
			
			
			
			return vehicle;
			
					}
}
