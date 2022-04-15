<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>


<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Material Details</h1>	
				</div>	
<table class="center"><br>

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


<c:url value="MaterialUpdate.jsp" var="update">

<c:param name="mat_id" value="${mat_id }"></c:param>
<c:param name="mat_type" value="${mat_type}"></c:param>
<c:param name="mat_name" value="${mat_name}"></c:param>
<c:param name="mat_qty" value="${mat_qty}"></c:param>
<c:param name="mat_limit" value="${mat_limit}"></c:param>
<c:param name="mat_less" value="${mat_less}"></c:param>
<c:param name="mat_price" value="${mat_price }"></c:param>

</c:url>
<a  href="${update }">

<button type="submit"  name="update"  id="update" ><i class="fas fa-shipping-fast"></i> &nbsp Update</button>
  
</a>

<c:url value="Materialdelete.jsp" var="delete">

<c:param name="mat_id" value="${mat_id }"></c:param>
<c:param name="mat_type" value="${mat_type}"></c:param>
<c:param name="mat_name" value="${mat_name}"></c:param>
<c:param name="mat_qty" value="${mat_qty}"></c:param>
<c:param name="mat_limit" value="${mat_limit}"></c:param>
<c:param name="mat_less" value="${mat_less}"></c:param>
<c:param name="mat_price" value="${mat_price }"></c:param>

</c:url>


<a href="${delete}">

<button type="submit"  name="delete"  id="delete" ><i class="fa fa-trash-alt"></i> &nbsp Delete</button>

</a>




</body>
</html>