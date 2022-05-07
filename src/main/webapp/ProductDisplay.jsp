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

<table>

<c:forEach var="productdetails" items="${productdetails}">


<c:set var="p_id" value="${productdetails.p_id}"/>
<c:set var="p_type" value="${productdetails.p_type}"/>
<c:set var="p_date" value="${productdetails.p_date}"/>
<c:set var="p_qty" value="${productdetails.p_qty}"/>
<c:set var="p_limited" value="${productdetails.p_limited}"/>
<c:set var="p_less" value="${productdetails.p_less}"/>
<c:set var="p_price" value="${productdetails.p_price}"/>

<tr>
     <td>Product ID</td>
<td>${productdetails.p_id}</td>
</tr> >

<tr>
     <td>Product Type</td>
<td>${productdetails.p_type}</td>
</tr> 
<tr> 
<tr>
     <td>Produced Date</td>
<td>${productdetails.p_date}</td>
</tr> 

<tr> 
<tr>
     <td>Quantity</td>
<td>${productdetails.p_qty}</td>
</tr> 
<tr> 
<tr>
     <td>Product Limit</td>
<td>${productdetails.p_limited}</td>
</tr> 
<tr> 
<tr>
     <td>Less Product Quantity</td>
<td>${productdetails.p_less}</td>
</tr> 
<tr> 
<tr>
     <td>Product Price</td>
<td>${productdetails.p_price}</td>
</tr> 

<tr> 

</c:forEach>
</table>

</table>
<c:url value="ProductUpdate.jsp" var="update">
<c:param name="p_id" value="${p_id }"></c:param>
<c:param name="p_type" value="${p_type }"></c:param>
<c:param name="p_date" value="${p_date }"></c:param>
<c:param name="p_qty" value="${p_qty }"></c:param>
<c:param name="p_limited" value="${p_limited}"></c:param>
<c:param name="p_less" value="${p_less }"></c:param>
<c:param name="p_price" value="${p_price }"></c:param>
</c:url>
<a  href="${update }">

<button type="submit"  name="submit"  id="update" ><i class="fa fa-wrench"></i> &nbsp Update</button>
 
</a>

<c:url value="ProductDelete.jsp" var="delete">
<c:param name="p_id" value="${p_id }"></c:param>
<c:param name="p_type" value="${p_type }"></c:param>
<c:param name="p_date" value="${p_date }"></c:param>
<c:param name="p_qty" value="${p_qty }"></c:param>
<c:param name="p_limited" value="${p_limited}"></c:param>
<c:param name="p_less" value="${p_less }"></c:param>
<c:param name="p_price" value="${p_price }"></c:param>


</c:url>


<a href="${delete}">

<button type="submit"  name="delete"  id="delete" ><i class="fa fa-trash-alt"></i> &nbsp Delete</button>



</body>
</html>