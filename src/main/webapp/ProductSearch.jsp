<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Search</title>
</head>
<body>


<form action="ProductSearchServlet" method="post">

<lable>Product ID:</lable>

<a href="#">
<input type="text" name="p_id" title="Enter Your Product ID" required  ><br><br><br>
</a>
<a href="${update}">

 
 <button type="submit"  name="submit"  id="search" ><i class="fa fa-search"></i> Search</button>
</a>

</form>

<center>
<div class="topic">
<h1>Product Table</h1>
</div>
<table class="center"><br>



<tr>
<th>Product Id</th>
<th>Product Type </th>
<th>Product Date</th>
<th>Quantity</th>
<th>Limited Quantity</th>
<th>Less Quantity</th>
<th>Product Price</th>



</tr>



<%
try {
Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ceramicworld","root","Malshi1999");
String sql="Select * from product" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){

%>
<tr>
<td name="p_id"><%=rs.getString(1)%></td>
<td name="p_type"><%=rs.getString(2)%></td>
<td name="p_date"><%=rs.getString(3)%></td>
<td name="p_qty"><%=rs.getString(4)%></td>
<td name="p_limited"><%=rs.getString(5)%></td>
<td name="p_less"><%=rs.getString(6)%></td>
<td name="p_price"><%=rs.getString(7)%></td>


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