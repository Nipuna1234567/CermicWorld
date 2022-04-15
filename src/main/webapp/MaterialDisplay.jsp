<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Material Display</title>

<link rel="stylesheet" href="web/css/material1.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/material2.css">

</head>
<body>

<h1>Material Details</h1>	
				


<table>

<c:forEach var="materialdetails" items="${materialdetails}">


<c:set var="mat_id" value="${materialdetails.mat_id}"/>
<c:set var="mat_type" value="${materialdetails.mat_type}"/>
<c:set var="mat_name" value="${materialdetails.mat_name}"/>
<c:set var="mat_use" value="${materialdetails.mat_use}"/>
<c:set var="mat_qty" value="${materialdetails.mat_qty}"/>
<c:set var="mat_limit" value="${materialdetails.mat_limit}"/>
<c:set var="mat_less" value="${materialdetails.mat_less}"/>
<c:set var="mat_price" value="${materialdetails.mat_price}"/>

<tr>
     <td>Material ID</td>
<td>${materialdetails.mat_id}</td>
</tr> >

<tr>
     <td>Material Type</td>
<td>${materialdetails.mat_type}</td>
</tr> 
<tr> 
<tr>
     <td>Material Name</td>
<td>${materialdetails.mat_name}</td>
</tr> 
<tr> 
<tr>
     <td>Material Use For</td>
<td>${materialdetails.mat_use}</td>
</tr> 
<tr> 
<tr>
     <td>Quantity</td>
<td>${materialdetails.mat_qty}</td>
</tr> 
<tr> 
<tr>
     <td>Material Limit</td>
<td>${materialdetails.mat_limit}</td>
</tr> 
<tr> 
<tr>
     <td>Less Material Quantity</td>
<td>${materialdetails.mat_less}</td>
</tr> 
<tr> 
<tr>
     <td>Price</td>
<td>${materialdetails.mat_price}</td>
</tr> 

<tr> 

</c:forEach>
</table>





</body>
</html>