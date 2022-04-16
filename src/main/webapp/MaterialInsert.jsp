<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html>
<html>
<head>

	
<meta charset="ISO-8859-1">
<title>Insert Raw Materials</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
	
	<script src="web/js/de.js"></script>
	
<!-- Footer-->	
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer.css">
<link rel="stylesheet" type="text/css" href="web/css/Footer2.css">

	<link rel="stylesheet" type="text/css" href="web/css/stylesce.css">
<link rel="stylesheet" href="web/css/material2.css">






<script>
function valid()
{
if(document.getElementById("mat_type").value=="Ball Clays")
{

 if((document.getElementById("mat_name").value=="Ball Clay-Bell Dark") ||(document.getElementById("mat_name").value=="Ball Clay-Foundry Cream"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}
else if(document.getElementById("mat_type").value=="Bentonites")
{

 if((document.getElementById("mat_name").value=="Bentonites-325 mesh" )|| (document.getElementById("mat_name").value=="Bentonites-HPM-20"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

 else if(document.getElementById("mat_type").value=="Fireclays")
{

 if((document.getElementById("mat_name").value=="Fireclay-IMCO-400") || (document.getElementById("mat_name").value=="Fireclay-Bond-40"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

else if(document.getElementById("mat_type").value=="Kaolins")
{

 if((document.getElementById("mat_name").value=="Kaolins-6")||(document.getElementById("mat_name").value=="Kaolins-Helmer"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

 else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}
</script>





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

<form name="myForm" action="MatInsertServlet" onsubmit="return validateForm()" method="post" >

<center> <h2> Insert Materials</h2> </center> <br><br>

           <div class="billformInner"></div>

 <center>        
<table>

   <tr>
   <th><h3>Material No</h3></th> <th><input type="text"  name="mat_id" id="mat_id" placeholder="M001" required ><br><br></th></tr>
    <tr>
    <th><h3>Material Type</h3></th> <th><select name="mat_type" id="mat_type" required>
			<option value="***********">***********</option>
 				 <option value="Ball Clays">Ball Clays</option>
  				 <option value="Bentonites">Bentonites</option>
                 <option value="Fireclays">Fireclays</option>
                  <option value="Kaolins">Kaolins</option>
                 
                </select> <br><br></th></tr>
     <tr>
      <tr>
    <th><h3>Material Name</h3></th> <th><select name="mat_name" id="mat_name" onchange="return valid()" required>
    
   <option value="***********">***********</option>
			<option value="Ball Clay-Bell Dark">Ball Clay-Bell Dark</option>
  				 <option value="Ball Clay-Foundry Cream">Ball Clay-Foundry Cream</option>
  				  <option value="Bentonites-325 mesh">Bentonites-325 mesh</option>
  				 <option value="Bentonites-HPM-20">Bentonites-HPM-20</option>
  				 <option value="Fireclay-IMCO-400">Fireclay-IMCO-400</option>
  				 <option value="Fireclay-Bond-40">Fireclay-Bond-40</option>
                  <option value="Kaolins-6">Kaolins-6</option>
  				 <option value="Kaolins-Helmer">Kaolins-Helmer</option>
                 
                </select> <br><br></th></tr>
    
                 
                 
                   <tr>
    <th><h3>Material Use For</h3></th> <th><select name="mat_use" id="mat_use">
			
 				 <option value="Porcelain">Porcelain</option>
  				 <option value="Stoneware">Stoneware</option>
  				  <option value="Earthenware">Earthenware</option>
  				 <option value="Bone China">Bone China</option>
  				 
  				</select> <br><br></th></tr>
                 
                  <tr>
   <th><h3>Quantity</h3></th> <th><input type="text"  name="mat_qty" id="mat_qty" placeholder="00" ><br><br></th></tr>
    
  
    <tr>
   <th> <h3>Limited Material</h3></th>  <th><input  type="text" name="mat_limit" name="text" id="mat_limit" placeholder="50" pattern="[50]{1,2}" title="Limited material is 50" required ><br><br></th></tr>
   
     <tr>
   <th> <h3>Price</h3></th>  <th><input  type="text" name="mat_price" name="text" id="mat_price" placeholder="Rs"><br><br></th></tr>
   
     </table>
    <br>
    <br>
     
      <input type="submit" name="submit" value="Insert"  id="submit" onclick="alert('You want to insert this material??');">
      
    <input type="reset" name="reset" value="Clear"  id="reset" onclick="alert('You want to clear this??');">
       
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