package com.Transport;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;






public class TransportDButil {
	
	//insert
		private static boolean done;
		private static Connection con=null;
		private static Statement stmt=null;
		private static ResultSet rs=null;
		
		
		public static boolean insertTransport(String t_id,int t_distance,int t_price,String date,String vehi_no,String shop_order) {
			boolean done=false;
			
			
			
			try {
				int t_amount=t_distance * t_price;
				
				con = TransportConnection.getConnection();
				stmt = con.createStatement();
				
				String sql="insert into transport_details values('"+t_id+"','"+t_distance+"','"+t_price+"','"+t_amount+"','"+date+"','"+vehi_no+"','"+shop_order+"')";
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
				TransportDButil.rs = rs;
			}
			
			
			//get
			public static List<Transport>getTransportdetails(String t_id)
			{
				
				
				ArrayList<Transport>Transport=new ArrayList<>();
				try {
					
			String sql="Select * from transport_details where t_id='"+t_id+"'";
			rs=stmt.executeQuery(sql);
			
			if(rs.next())
			{
				String t1_id=rs.getString(1);
				String t_distance=rs.getString(2);
				String t_price=rs.getString(3);
				String t_amount=rs.getString(4);
				String date=rs.getString(5);
				String vehi_no=rs.getString(6);
				String shop_order=rs.getString(7);
			
				
				Transport d=new Transport(t1_id,t_distance,t_price,t_amount,date,vehi_no,shop_order);
				Transport.add(d);
				
			}
			
			
			}
			catch(Exception e)
		{
			e.printStackTrace();
		}
		
		
		
		return Transport;
		
				}
			
			//update
			public static boolean UpdateTransport(String t_id,String t_distance,String t_price,String t_amount,String date,String vehi_no,String shop_order) {

				try {

				con=TransportConnection.getConnection();
				stmt=con.createStatement();
				String sql="Update transport_details set date='"+date+"' ,vehi_no='"+vehi_no+"'"
				+"where t_id='"+t_id+"'" ;
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
			public static boolean search(String t_id) {
				try {
				con=TransportConnection.getConnection();
				stmt = con.createStatement();
				String sql = "select * from transport_details where t_id='"+t_id+"'";
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
			public static List<Transport>getUpdateTransport(String t_id){
				//int convertid1=Integer.parseInt(id);

				ArrayList<Transport>d1=new ArrayList<>();
				
				try {
				con=TransportConnection.getConnection();
				stmt=con.createStatement();
				String sql="Select * from transport_details where t_id='"+t_id+"' ";
				rs=stmt.executeQuery(sql);

				while(rs.next()) {

					String t1_id=rs.getString(1);
					String t_distance=rs.getString(2);
					String t_price=rs.getString(3);
					String t_amount=rs.getString(4);
					String date=rs.getString(5);
					String vehi_no=rs.getString(6);
					String shop_order=rs.getString(7);


					Transport d2=new Transport(t1_id,t_distance,t_price,t_amount,date,vehi_no,shop_order);
				d1.add(d2);

				}

				}catch(Exception e)
				{
				e.printStackTrace();
				}

				return d1;


				}
			//delete
			public static boolean Delete(String t_id) {
				try {
					con=TransportConnection.getConnection();
					stmt=con.createStatement();
					String sql="Delete from transport_details where t_id='"+t_id+"' ";
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
