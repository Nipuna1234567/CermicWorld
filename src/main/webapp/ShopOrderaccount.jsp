<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>View Shop Order Details</title>
	
	<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	
	<script src="web/js/de.js"></script>
	
<!-- Footer-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer2.css">
<link rel="stylesheet" type="text/css" href="web/css/stylesce.css">
<link rel="stylesheet" href="web/css/shopinsert.css">
	
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
				<a href="#">About</a>
				<a href="SalesHome.jsp">Sales</a>
				<a href="#">Contact</a>
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

</head>
<body>

<center>
	<div class="topic">
<h1>View Shop Order Details</h1>
</div>
<table class="center"><br>




<br>
<br>
	
	<c:forEach var="so" items="${shopDetails}">
	
	<c:set var="shop_order" value="${so.shop_order}"/>
	<c:set var="shop_name" value="${so.shop_name}"/>
	<c:set var="shop_no" value="${so.shop_no}"/>
	<c:set var="shop_address" value="${so.shop_address}"/>
	<c:set var="qty" value="${so.qty}"/>
	<c:set var="unite_price" value="${so.unite_price}"/>
	<c:set var="date" value="${so.date}"/>
	<c:set var="sh_id" value="${so.sh_id}"/>
	<c:set var="p_id" value="${so.p_id}"/>
	
	
	
	<tr>
		<td>Shop Order</td>
		<td>${so.shop_order}</td>
	</tr>
	<tr>
		<td>Shop Name</td>
		<td>${so.shop_name}</td>
	</tr>
	<tr>
		<td>shop No</td>
		<td>${so.shop_no}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${so.shop_address}</td>
	</tr>
	<tr>
		<td>Quantity</td>
		<td>${so.qty}</td>
	</tr>
	
	<tr>
		<td>Unite Price</td>
		<td>${so.unite_price}</td>
	</tr>
	
	<tr>
		<td>Date</td>
		<td>${so.date}</td>
	</tr>
	
	<tr>
		<td>Shop ID</td>
		<td>${so.sh_id}</td>
	</tr>
	
	<tr>
		<td>Product ID</td>
		<td>${so.p_id}</td>
	</tr>
	
	
	


	</c:forEach>
	</table>
	
	 
  <br>
  <br><br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>
  <br>


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
                        <li> <a href="#"> Home</a> </li>
                        <li> <a href="#"> About</a> </li>
                        <li> <a href="#"> Service</a> </li>
                        <li> <a href="#"> Team</a> </li>
                        <li> <a href="#"> Help</a> </li>
                        <li> <a href="#"> Contact</a> </li>
                     </ul>
                  </div>
                  
                  <div class="col-md-6 px-4">
                  
                     <ul>
                        <li> <a href="#"> Home</a> </li>
                        <li> <a href="#"> Supplier</a> </li>
                        <li> <a href="#"> Product</a> </li>
                        <li> <a href="#"> Sales</a> </li>
                        <li> <a href="#"> Transport </a> </li>
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