<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Vehicle Details</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	<link rel="stylesheet" href="web/css/deliver2.css">
	<script src="https://kit.fontawesome.com/b99e675b6e.js"></script>
	<script src="web/js/de.js"> </script>

</head>
<body>

<center>

<div class="topic">
					<h1>Vehicle Details</h1>	
				</div>	
<table class="center"><br>

 
        <br>
        <br>

<c:forEach var="vehicledetails" items="${vehicledetails}">


<c:set var="vehi_no" value="${vehicledetails.vehi_no}"/>
<c:set var="vehi_type" value="${vehicledetails.vehi_type}"/>
<c:set var="vehi_brand" value="${vehicledetails.vehi_brand}"/>
<c:set var="chassi_no" value="${vehicledetails.chassi_no}"/>
<c:set var="vehi_mileage" value="${vehicledetails.vehi_mileage}"/>
<c:set var="ins_upto" value="${vehicledetails.ins_upto}"/>
<c:set var="emi_upto" value="${vehicledetails.emi_upto}"/>

<tr>
     <td>Vehicle No</td>
<td>${vehicledetails.vehi_no}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle type</td>
<td>${vehicledetails.vehi_type}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle brand</td>
<td>${vehicledetails.vehi_brand}</td>
</tr> 
<tr> 
<tr>
     <td>Chassi no</td>
<td>${vehicledetails.chassi_no}</td>
</tr> 
<tr> 
<tr>
     <td>Vehicle mileage</td>
<td>${vehicledetails.vehi_mileage}</td>
</tr> 
<tr> 
<tr>
     <td>Insurance</td>
<td>${vehicledetails.ins_upto}</td>
</tr> 
<tr> 
<tr>
     <td>Emission</td>
<td>${vehicledetails.emi_upto}</td>
</tr> 
<tr> 

</c:forEach>
 
</table>
<c:url value="VehicleUpdate.jsp" var="update">
<c:param name="vehi_no" value="${vehi_no }"></c:param>
<c:param name="vehi_type" value="${vehi_type }"></c:param>
<c:param name="vehi_brand" value="${vehi_brand }"></c:param>
<c:param name="chassi_no" value="${chassi_no }"></c:param>
<c:param name="vehi_mileage" value="${vehi_mileage}"></c:param>
<c:param name="ins_upto" value="${ins_upto }"></c:param>
<c:param name="emi_upto" value="${emi_upto }"></c:param>
</c:url>
<a  href="${update }">

<button type="submit"  name="submit"  id="update" ><i class="fa fa-wrench"></i> &nbsp Update</button>
 
</a>

<c:url value="VehicleDelete.jsp" var="delete">
<c:param name="vehi_no" value="${vehi_no }"></c:param>
<c:param name="vehi_type" value="${vehi_type }"></c:param>
<c:param name="vehi_brand" value="${vehi_brand }"></c:param>
<c:param name="chassi_no" value="${chassi_no }"></c:param>
<c:param name="vehi_mileage" value="${vehi_mileage}"></c:param>
<c:param name="ins_upto" value="${ins_upto }"></c:param>
<c:param name="emi_upto" value="${emi_upto }"></c:param>


</c:url>


<a href="${delete}">

<button type="submit"  name="delete"  id="delete" ><i class="fa fa-trash-alt"></i> &nbsp Delete</button>

</a>


</body>
</html>