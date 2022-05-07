package com.admin;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;




public class AdminDButil {
	
	private static boolean Success;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;

	
	public static boolean login(String user_name, String password) {
		
		try {
			con=adminConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from padmin where user_name='"+user_name+"' and password='"+password+"'";
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
	
	public static List<admin> getadmin(String user_name) {
		
		ArrayList<admin> admin = new ArrayList<>();
		
		try {
			
			con=adminConnection.getConnection();
			stmt = con.createStatement();
			String sql = "select * from padmin where user_name='"+user_name+"'";
			rs = stmt.executeQuery(sql);
			
			while (rs.next()) {
				int id = rs.getInt(1);
				String admin_name = rs.getString(2);
				String admin_mail= rs.getString(3);
				String user_name1 = rs.getString(4);
				String password = rs.getString(5);
				
				
				
				admin ad=new admin(id,admin_name,admin_mail,user_name1,password);
				admin.add(ad);
			}
			
		} catch (Exception e) {
			
		}
		
		return admin;	
	}
	
}
	

