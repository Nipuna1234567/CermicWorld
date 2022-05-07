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
<link rel="stylesheet" href="web/css/Order.css">
	<link rel="stylesheet" type="text/css" href="web/css/stylesce.css">
	
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
				<a href="SupplierHome.jsp">Supplier</a>
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
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>

</head>
<body>

<center>
	<div class="topic">
<h1>Add Supplier Orders</h1>
</div>





<br>
<br>

<center>
<Table>
	
	<c:forEach var="orderdetails" items="${orderdetails}">
	
	<c:set var="sup_oid" value="${orderdetails.sup_oid}"/>
	<c:set var="qty" value="${orderdetails.qty}"/>
	<c:set var="date" value="${orderdetails.date}"/>
	<c:set var="comp_id" value="${orderdetails.comp_id}"/>
	<c:set var="mat_id" value="${orderdetails.mat_id}"/>
	
	
	
	<tr>
		<td>sup_oid</td>
		<td>${orderdetails.sup_oid}</td>
	</tr>
	<tr>
		<td>qty</td>
		<td>${orderdetails.qty}</td>
	</tr>
	<tr>
		<td>date</td>
		<td>${orderdetails.date}</td>
	</tr>
	<tr>
		<td>comp_id</td>
		<td>${orderdetails.comp_id}</td>
	</tr>
	<tr>
		<td>mat_id</td>
		<td>${orderdetails.mat_id}</td>
	</tr>
	
	


	</c:forEach>
	</table>
	</center>
	
	
 
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