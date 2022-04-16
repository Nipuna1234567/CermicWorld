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
<h1>Add Shops</h1>
</div>
<table class="center"><br>




<br>
<br>
	
	<c:forEach var="sh" items="${shopDetails}">
	
	<c:set var="sh_id" value="${sh.sh_id}"/>
	<c:set var="sh_name" value="${sh.sh_name}"/>
	<c:set var="sh_phone" value="${sh.sh_phone}"/>
	<c:set var="sh_address" value="${sh.sh_address}"/>
	
	
	
	<tr>
		<td>S_id</td>
		<td>${sh.sh_id}</td>
	</tr>
	<tr>
		<td>Sh_Name</td>
		<td>${sh.sh_name}</td>
	</tr>
	<tr>
		<td>phoneNo</td>
		<td>${sh.sh_phone}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${sh.sh_address}</td>
	</tr>
	
	


	</c:forEach>
	</table>
	
	<c:url value="shopupdate.jsp" var="shupdate">
		<c:param name="sh_id" value="${sh_id}"/>
		<c:param name="sh_name" value="${sh_name}"/>
		<c:param name="sh_phone" value="${sh_phone}"/>
		<c:param name="sh_address" value="${sh_address}"/>

	</c:url>
	
	<a href="${shupdate}">
	<input type="button" name="update"  id="update" value="Update">
	</a>
	
	<br>
	<c:url value="shopdelete.jsp" var="shdelete">
		<c:param name="sh_id" value="${sh_id}" />
		<c:param name="sh_name" value="${sh_name}" />
		<c:param name="sh_phone" value="${sh_phone}" />
		<c:param name="sh_address" value="${sh_address}" />
	
	</c:url>
	<a href="${shdelete}">
	<input type="button" name="delete" id="delete" value="Delete">
	</a>
	
	 
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