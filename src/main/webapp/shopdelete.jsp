<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Shop Delete</title>





<center>
<br>
<br>
<br>


<%
String sh_id= request.getParameter("sh_id");
String sh_name=request.getParameter("sh_name");
String sh_phone=request.getParameter("sh_phone");
String sh_address=request.getParameter("sh_address");



%>
<form name="myForm" action="ShopDeleteServlet" onsubmit="return validateForm()" method="post" >



<div class="topic">
<h1><center>Delete Shops</h1>
</div>



<table>
<tr>
<th><h3>Shop ID</h3></th> <th><input type="text" name="sh_id" id="sh_id" placeholder="ID" value="<%=sh_id %>" readonly><br><br></th></tr>
<tr>
<tr>
<th> <h3>Shop Name</h3></th> <th><input type="text" name="sh_name" name="text" id="sh_name" placeholder="Shop Name" value="<%=sh_name %>"readonly><br><br></th></tr>
<tr>
<th> <h3>Shop Phone</h3></th> <th><input type="text" name="sh_phone" name="text" id="sh_phone" placeholder="Phone No" value="<%=sh_phone %>"readonly><br><br></th></tr>
<tr>
<th> <h3>Shop Address</h3></th> <th><input type="text" name="sh_address" name="text" id="sh_address" placeholder="Address" value="<%=sh_address %>"readonly><br><br></th></tr>
<tr>
</table>

<input type="submit" name="delete" value="Delete" id="delete" onclick="alert('Successfully Delete shop details!');">
<br><br>