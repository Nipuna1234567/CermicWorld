<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="java.sql.*" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "ceramicworld";
String userid = "root";
String password = "Malshi1999";

String year = request.getParameter("year");
String month = request.getParameter("month");

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Report</title>

<script src="web/js/jquery-3.6.0.min.js"></script>
<script src="web/js/html2pdf.bundle.min.js"></script>
</head>
<body>


<div class="topic">
<h1>Monthly Production Details</h1>
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
String sql="Select * from product where p_date like '"+month+"/__/"+year+"'" ;
Statement st=con.createStatement();
ResultSet rs=st.executeQuery(sql);
while(rs.next()){



%>
<tr>
<<td name="p_id"><%=rs.getString(1)%></td>
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
<button type="submit"   name="submit"  id="downloadbtn" ><i class="fa fa-download">  </i> Download Report </button><br><br></div>





<script>
$('#downloadbtn').click(function () {
var element = document.getElementById('content');
$("#downloadbtn").hide();
//html2pdf(element);
var opt = {
margin: 1,
filename: 'ProductionReport.pdf',
image: { type: 'jpeg', quality: 1.0 },
html2canvas: { scale: 2 },
jsPDF: { unit: 'in', format: 'letter', orientation: 'portrait' }
};



// New Promise-based usage:
//html2pdf().set(opt).from(element).save();



// Old monolithic-style usage:
html2pdf(element, opt);
$("#downloadbtn").show();



});



// This code is collected but useful, click below to jsfiddle link.
</script>

</body>
</html>