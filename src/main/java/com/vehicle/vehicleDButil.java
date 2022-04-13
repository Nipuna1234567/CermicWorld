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

//update
				public static boolean UpdateVehicle(String vehi_no,String vehi_type,String vehi_brand,String chassi_no,String vehi_mileage,String ins_upto,String emi_upto) {

					try {

					con=vehicleConnection.getConnection();
					stmt=con.createStatement();
					String sql="Update transport_vehicle set vehi_mileage='"+vehi_mileage+"' ,ins_upto='"+ins_upto+"' ,emi_upto='"+emi_upto+"'"
					+"where vehi_no='"+vehi_no+"'" ;
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
				//search
				public static boolean search(String vehi_no) {
					try {
					con=vehicleConnection.getConnection();
					stmt = con.createStatement();
					String sql = "select * from transport_vehicle where vehi_no='"+vehi_no+"'";
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
				
				//update
				public static List<Vehicle>getUpdateVehicle(String vehi_no){
					//int convertid1=Integer.parseInt(id);

					ArrayList<Vehicle>vh1=new ArrayList<>();
					

					try {
					con=vehicleConnection.getConnection();
					stmt=con.createStatement();
					String sql="Select * from transport_vehicle where vehi_no='"+vehi_no+"' ";
					rs=stmt.executeQuery(sql);

					while(rs.next()) {

						String vehi1_no=rs.getString(1);
						String vehi_type=rs.getString(2);
						String vehi_brand=rs.getString(3);
						String chassi_no=rs.getString(4);
						String vehi_mileage=rs.getString(5);
						String ins_upto=rs.getString(6);
						String emi_upto=rs.getString(7);


					Vehicle vh2=new Vehicle(vehi_no,vehi_type,vehi_brand,chassi_no,vehi_mileage,ins_upto,emi_upto);
					vh1.add(vh2);

					}

					}catch(Exception e)
					{
					e.printStackTrace();
					}

					return vh1;


					}				
				
}


