package com.Supplier;


import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;



public class SupplierCompanyDBUtil {
	
	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	

	//insert
		public static boolean insertSupplierCompany(String comp_id,String comp_name,String comp_type,String comp_phone,String comp_address, String comp_email) {
					boolean done=false;
					
					
					
					try {
					
						
						
						con = Supplierconnect.getConnection();
						stmt = con.createStatement();
						
					
						
					
						
						String sql="insert into add_supplier values('"+comp_id+"','"+comp_name+"','"+comp_type+"','"+comp_phone+"','"+comp_address+"','"+comp_email+"')";
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
						SupplierCompanyDBUtil.rs = rs;
					}

					//get
					public static List<SupplierCompany>getsuppliercompanydetails(String comp_id)
					{
						
						
						ArrayList<SupplierCompany>SupplierCompany=new ArrayList<>();
						try {
							
					String sql="Select * from add_supplier where comp_id='"+comp_id+"'";
					rs=stmt.executeQuery(sql);
					
					if(rs.next())
					{
						String comp_id1=rs.getString(1);
						String comp_name=rs.getString(2);
						String comp_type=rs.getString(3);
						String comp_phone=rs.getString(4);
						String comp_address=rs.getString(5);
						String comp_email=rs.getString(6);
						
						
						
						
						SupplierCompany co=new SupplierCompany(comp_id,comp_name,comp_type,comp_phone,comp_address,comp_email);
						SupplierCompany.add(co);
						
					}
					
					
					}
					catch(Exception e)
				{
					e.printStackTrace();
				}
				
				
				
				return SupplierCompany;
				
						}
					
					
					
//delete material from the table

					public static boolean Delete(String comp_id) {
					
					try {
					con=Supplierconnect.getConnection();
					stmt=con.createStatement();
					String sql="Delete from add_supplier where comp_id='"+comp_id+"' ";
					int rs=stmt.executeUpdate(sql);

					if(rs>0)
					{
					isSuccess=true;
					}
					else
					{
					isSuccess=false;
					}



					}

					catch(Exception e)
					{
					e.printStackTrace();
					}
					return isSuccess;




					}
	}
