package com.shopOrder;

 

import java.sql.Connection;
import java.sql.DriverManager;

 

public class ShopOrderConnect {
    
    private static String url="jdbc:mysql://localhost:3306/ceramicworld";
    private static String user="root";
    private static String password="Nipuna1234";
    private static Connection con;

 

    public static Connection getConnection() {

 

    try {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection(url,user,password);
    }catch(Exception e)
    {
        System.out.println("Database connection is not successfull!!");
    }
        return con;

 

    }

 

}