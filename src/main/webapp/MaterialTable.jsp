<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<table class="center"><br>



<tr>
<th>Material Id</th>
<th>Material Type </th>
<th>Material Name</th>
<th>Quantity</th>
<th>Material Limit</th>
<th>Less Material Quantity</th>
<th>Material Price</th>

<th>update</th>


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
<td name="mat_qty"><%=rs.getString(4)%></td>
<td name="mat_limit"><%=rs.getString(5)%></td>
<td name="mat_less"><%=rs.getString(6)%></td>
<td name="mat_price"><%=rs.getString(7)%></td>


<td><a href='MaterialUpdate.jsp?mat_id=<%=rs.getString(1) %>' class="update">Update</a></td>

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