<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<link rel="stylesheet" href="web/css/Supplier.css">
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
				<a href="SalesHome.jsp">Supplier</a>
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


	<%
	        
			String comp_id = request.getParameter("comp_id");
			String comp_name = request.getParameter("comp_name");
			String comp_type = request.getParameter("comp_type");
			String comp_phone= request.getParameter("comp_phone");
			String comp_address= request.getParameter("comp_address");
			String comp_email = request.getParameter("comp_email");
			
	%>
	
	
	<h1> Delete Supplier Company</h1>
	
	<form action="SupplierCompanyDeleteServlet" method="post">
	<table>
		
		<tr>
			<td>Company ID</td>
			<td><input type="text" id="comp_id" name="comp_id" value="<%= comp_id %>" readonly></td>
		</tr>
		<tr>
		<td>Company Name</td>
		<td><input type="text" id="comp_name" name="comp_name" value="<%= comp_name %>"readonly ></td>
	</tr>
	<tr>
		<td>Company Type</td>
		<td><input type="text" id="comp_type" name="comp_type" value="<%= comp_type %>" readonly></td>
	</tr>
	<tr>
		<td>Company Phone</td>
		<td><input type="text" id="comp_phone" name="comp_phone" value="<%= comp_phone %>" readonly></td>
	</tr>
	<tr>
		<td>Company Address</td>
		<td><input type="text" id="comp_address" name="comp_address" value="<%= comp_address %>" readonly></td>
	</tr>
	<tr>
		<td>Company Email</td>
		<td><input type="text" id="comp_email" name="comp_email" value="<%= comp_email %>" readonly></td>
	
	</tr>			
	</table>
	<br>
	<input type="submit" name="delete" value="Delete" id="delete" onclick="alert('Successfully Delete company details!');">
	</form>
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