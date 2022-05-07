package com.tadmin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class tadminDButil {
	
	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean login(String user_name, String password) {
		
		try {
			con=tadminConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from tadmin where user_name='"+user_name+"' and password='"+password+"'";
			rs = stmt.executeQuery(sql);
			
			if (rs.next()) {
				Success = true;
			} else {
				Success = false;
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return Success;
	}
	
	public static List<tadmin> getadmin(String user_name) {
		
		ArrayList<tadmin> tadmin = new ArrayList<>();
		
		try {
			
			con=tadminConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from tadmin where user_name='"+user_name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String admin_name = rs.getString(2);
				String admin_mail= rs.getString(3);
				String user_name1 = rs.getString(4);
				String password = rs.getString(5);
				
				
				
				tadmin ad=new tadmin(id,admin_name,admin_mail,user_name1,password);
				tadmin.add(ad);
			}
			
		} catch (Exception e) {
			
		}
		
		return tadmin;	
	}
	
}
	



