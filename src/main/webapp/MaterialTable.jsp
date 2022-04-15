<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Material Table</title>
<link rel="stylesheet" href="web/css/material1.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/material2.css">
</head>
<body>


<table class="center"><br>



<tr>
<th>Material Id</th>
<th>Material Type </th>
<th>Material Name</th>
<th>Material Use For</th>
<th>Quantity</th>
<th>Material Limit</th>
<th>Less Material Quantity</th>
<th>Material Price</th>

<th>Update</th>
<th>Delete</th>


</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ceramicworld","root","Malshi1999");
String sql="Select * from raw_material" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="mat_id"><%=rs.getString(1)%></td>
<td name="mat_type"><%=rs.getString(2)%></td>
<td name="mat_name"><%=rs.getString(3)%></td>
<td name="mat_use"><%=rs.getString(4)%></td>
<td name="mat_qty"><%=rs.getString(5)%></td>
<td name="mat_limit"><%=rs.getString(6)%></td>
<td name="mat_less"><%=rs.getString(7)%></td>
<td name="mat_price"><%=rs.getString(8)%></td>


<td><a href='MaterialUpdate.jsp?mat_id=<%=rs.getString(1) %>' class="update" id="update2">Update</a></td>
<td><a href='MaterialDelete.jsp?mat_id=<%=rs.getString(1) %>' class="update" id="delete2">Delete</a></td>

</tr>
<%
}


}catch(Exception e)
{
e.printStackTrace();
}
%>

</table>

</body>
</html>