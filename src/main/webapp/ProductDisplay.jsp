<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	
	<script src="web/js/de.js"></script>
	
<!-- Footer-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer2.css">

	<link rel="stylesheet" type="text/css" href="web/css/stylesce.css">
<link rel="stylesheet" href="web/css/material2.css">
</head>
<body>

<div class="box-area">
<header>
	<div class="wrapper">
		
		<nav>
		
    <div class="content">
<img class="img" src="web/images/lo.png"  width="850px" height="400px"  ">
</div>
		
			    <a href="Home.jsp">Home</a>
				<a href="ProductManagementHome.jsp">Stock</a>
				<a href="#">Contact</a>
				<a href="#">About</a>
		</nav>
		
	</div>
</header>
<div class="banner-area">

</div>

<div class="content-area">
	<div class="wrapper">
<br>
<br>
<br>
<br>


<h1>Product Details</h1>	
				

<center>
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


  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br><br>				
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br><br>
  <br>
  <br>
  <br>

</div>

<footer class="container-fluid bg-grey py-5">
<div class="container">
   <div class="row">
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 ">
               <div class="logo-part">
                  <img src="web/images/lo.png"  width="350px" height="180px"  align="right" >
                  <p>Ceramic World© (pvt).Ltd Company</p>
                  
                  
               </div>
            </div>
            <div class="col-md-6 px-4">
               <h6> About Company</h6>
               <p>We a gathering of multi skilled.</p>
               <a href="#" class="btn-footer"> More Info </a><br>
               <a href="#" class="btn-footer"> Contact Us</a>
            </div>
         </div>
      </div>
      <div class="col-md-6">
         <div class="row">
            <div class="col-md-6 px-4">
               <h6> Help us</h6>
               <div class="row ">
                  <div class="col-md-6">
                     <ul>
                        <li> <a href="Home.jsp"> Home</a> </li>
                        <li> <a href="#"> About</a> </li>
                        <li> <a href="#"> Service</a> </li>
                        <li> <a href="#"> Team</a> </li>
                        <li> <a href="#"> Help</a> </li>
                        <li> <a href="#"> Contact</a> </li>
                     </ul>
                  </div>
                  
                  <div class="col-md-6 px-4">
                  
                     <ul>
                        <li> <a href="Home.jsp"> Home</a> </li>
                        <li> <a href="#"> Supplier</a> </li>
                        <li> <a href="ProductManagemenetHome.jsp"> Product</a> </li>
                        <li> <a href="#"> Sales</a> </li>
                        <li> <a href="TransportHome.jsp"> Transport </a> </li>
                        <li> <a href="#"> Policy</a> </li>
                     </ul>
                  </div>
               </div>
            </div>
            <div class="col-md-6 ">
               <h6> Newsletter</h6>
               <div class="social">
                  <a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a>
                  <a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a>
               </div>
               <form class="form-footer my-3">
                  <input type="text"  placeholder="search here...." name="search">
                  <input type="button" value="Go" >
               </form>
               <p>World Best Ceramic Company </p>
            </div>
         </div>
      </div>
   </div>
</div>
</footer>   

</body>
</html>