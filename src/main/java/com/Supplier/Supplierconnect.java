package com.Supplier;

import java.sql.Connection;
import java.sql.DriverManager;

public class Supplierconnect {
	
	private static String url = "jdbc:mysql://localhost:3306/ceramicworld";
	private static String userName = "root";
	private static String password = "1234aruni";
	private static Connection con;

	public static Connection getConnection() {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			
			con = DriverManager.getConnection(url, userName, password);
			
		}
		catch (Exception e) {
			System.out.println("Database connection is not success!!!");
		}
		
		return con;
	}
}




