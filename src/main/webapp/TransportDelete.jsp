<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Transport Details</title>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer2.css">
<link rel="stylesheet" href="web/css/transport.css">
<link rel="stylesheet" href="web/css/deliver.css">

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
				<a href="TransportHome.jsp">Transport</a>
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
<br>
<br>


<%
 String t_id= request.getParameter("t_id");
 String t_distance=request.getParameter("t_distance");
 String t_price=request.getParameter("t_price");
 String t_amount=request.getParameter("t_amount");
 String date=request.getParameter("date");
 String vehi_no=request.getParameter("vehi_no");
 String shop_order=request.getParameter("shop_order");
 

%>

<form name="myForm" action="TransportDeleteServlet" onsubmit="return validateForm()" method="post" >
<center>
<div class="topic">
<h1><center>Delete Transport Details</h1>	
</div>
<br>
        <br>
        <br>
     
<table>
 <tr>
   <th> <h3>Transport id</h3></th>  <th><input  type="text" name="t_id" name="text" id="t_id" placeholder="DE1" value="<%=t_id %>"><br><br></th></tr>
    <tr>
     <th> <h3>Transport Distance</h3></th>  <th><input  type="text" name="t_distance" name="text" id="t_distance" placeholder="00Km" value="<%=t_distance %>"><br><br></th></tr>
    <tr>
     <th> <h3>Price Per Km</h3></th>  <th><input  type="text" name="t_price" name="text" id="t_price" placeholder="Rs" value="<%=t_price %>"><br><br></th></tr>
    <tr>
    <th><h3>Transport Amount</h3></th> <th><input type="text"  name="t_amount" name="text" id="t_amount" placeholder="Rs" value="<%=t_amount %>"><br><br></th></tr>
     <tr>
    <th><h3>Date</h3></th> <th><input type="text"  name="date" name="text" id="datepicker" placeholder="MM-DD-YYYY" value="<%=date %>" required><br><br></th></tr>
     <tr>
    <th><h3>Vehicle no</h3></th> <th><input type="text"  name="vehi_no" name="text" id="vehi_no" placeholder="XX-XXXX" value="<%=vehi_no %>"><br><br></th></tr>
     <tr>
    <th><h3>Shop order id</h3></th> <th><input type="text"  name="shop_order" name="text" id="shop_order" placeholder="D1" value="<%=shop_order %>"><br><br></th></tr>
    
   
    
     </table>
       <input type="submit" name="update" value="Delete" id="delete" onclick="alert('Successfully Delete Transport Details!!!');">
    <br><br>
     
     </form>
     
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