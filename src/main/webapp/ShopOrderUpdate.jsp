<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Shop Order</title>

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
				<a href="SalesHome.jsp">Sales</a>
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





<form name="myForm" action="ShopOrderUpdateServlet" onsubmit="return validateForm()" method="post" >

<%


 Class.forName("com.mysql.jdbc.Driver").newInstance();
Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/ceramicworld","root","Nipuna1234");
String shop_order=request.getParameter("shop_order");

String sql="Select * from shop_order where shop_order='"+shop_order+"'" ;
Statement st=conn.createStatement();
ResultSet rs=st.executeQuery(sql);

 while(rs.next()){
%>

<h1>Update Shop Order</h1>	
<center>
<table>


                 
    <tr>
   <th><h3>Shop Order</h3></th> <th><input type="text"  name="shop_order" id="shop_order" placeholder="ID"  value="<%=rs.getString(1)%>" readonly><br><br></th></tr>
    
  
    <tr>
   <th> <h3>Shop Name</h3></th>  <th><input  type="text" name="shop_name" name="text" id="shop_name" placeholder="Shop Name"  value="<%=rs.getString(2)%>" ><br><br></th></tr>
   
   <tr>
   <th> <h3>Shop No</h3></th>  <th><input  type="text" name="shop_no" name="text" id="shop_no" placeholder="Shop No"  value="<%=rs.getString(3)%>" ><br><br></th></tr>
   
   <tr>
   <th> <h3>Shop Address</h3></th>  <th><input  type="text" name="shop_address" name="text" id="shop_address" placeholder="Shop Address"  value="<%=rs.getString(4)%>" ><br><br></th></tr>
   
    <tr>
   <th> <h3>Quantity</h3></th>  <th><input  type="text" name="qty" name="text" id="qty" placeholder="Quantity"  value="<%=rs.getString(5)%>" ><br><br></th></tr>
   
    <tr>
   <th> <h3>Unite Price</h3></th>  <th><input  type="text" name="unite_price" name="text" id="unite_price" placeholder="Unite Price"  value="<%=rs.getString(6)%>" ><br><br></th></tr>
   
    <tr>
   <th> <h3>Date</h3></th>  <th><input  type="text" name="date" name="text" id="date" placeholder="Date"  value="<%=rs.getString(7)%>" ><br><br></th></tr>
   
    <tr>
   <th> <h3>Shop ID</h3></th>  <th><input  type="text" name="sh_id" name="text" id="sh_id" placeholder="Shop ID"  value="<%=rs.getString(8)%>" ><br><br></th></tr>
   
    <tr>
   <th> <h3>Product ID</h3></th>  <th><input  type="text" name="p_id" name="text" id="p_id" placeholder="Product ID"  value="<%=rs.getString(9)%>" ><br><br></th></tr>
   
                  <% 
 }
 %>
    
    </table>
   
    <input type="submit" name="submit" value="Update" id="update" onclick="alert( 'Are sure you want to update shop details?');">
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
                  <p>Ceramic World� (pvt).Ltd Company</p>
                  
                  
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