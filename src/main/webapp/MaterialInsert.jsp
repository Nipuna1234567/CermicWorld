<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	
<meta charset="ISO-8859-1">
<title>Insert Raw Materials</title>



</head>
<body>

<form name="myForm" action="MatInsertServlet" onsubmit="return validateForm()" method="post" >
<h2> Insert Materials</h2></center><br><br>

           <div class="billformInner">
<table>

   <tr>
   <th><h3>Material No</h3></th> <th><input type="text"  name="mat_id" id="mat_id" placeholder="m00" ><br><br></th></tr>
    <tr>
    <th><h3>Material Type</h3></th> <th><select name="mat_type" id="mat_type">
			
 				 <option value="Ball Clays">Ball Clays</option>
  				 <option value="Bentonites">Bentonites</option>
                 <option value="Fireclays">Fireclays</option>
                 
                </select> <br><br></th></tr>
     <tr>
      <tr>
    <th><h3>Material Name</h3></th> <th><select name="mat_name" id="mat_name">
			
 				 <option value="Ball Clay-Bell Dark">Ball Clay-Bell Dark</option>
  				 <option value="Ball Clay-Foundry Hill Cream">Ball Clay-Foundry Hill Cream</option>
  				  <option value="Bentonites-325 mesh">Bentonites-325 mesh</option>
  				 <option value="Bentonites-HPM-20">Bentonites-HPM-20</option>
  				 <option value="Fireclay-IMCO-400">Fireclay-IMCO-400</option>
  				 <option value="Fireclay-Bond-40">Fireclay-Bond-40</option>
                 
                 
               
                 </select> <br><br></th></tr>
                 
                   <tr>
    <th><h3>Material Use For</h3></th> <th><select name="mat_use" id="mat_use">
			
 				 <option value="Ceramic Plate">Ceramic Plate</option>
  				 <option value="Ceramic Mug">Ceramic Mug</option>
  				  <option value="Ceramic Cup">Ceramic Cup</option>
  				 <option value="Ceramic printed Plate">Ceramic printed Plate</option>
  				 <option value="Ceramic printed Cup">Ceramic printed Cup</option>
  				 
                  </select> <br><br></th></tr>
                 
                  <tr>
   <th><h3>Quantity</h3></th> <th><input type="text"  name="mat_qty" id="mat_qty" placeholder="RM001" ><br><br></th></tr>
    
  
    <tr>
   <th> <h3>Limited Material</h3></th>  <th><input  type="text" name="mat_limit" name="text" id="mat_limit" placeholder="number" pattern="[50]{1,2}" title="Limited material is 50" required ><br><br></th></tr>
   
     <tr>
   <th> <h3>Price</h3></th>  <th><input  type="text" name="mat_price" name="text" id="mat_price" placeholder="Rs"><br><br></th></tr>
   
     </table>
    
      <input type="submit" name="submit" value="Insert"  id="submit" onclick="alert('You want to insert this material??');">
      
       <input type="submit" name="clear" value="Clear"  id="clear" onclick="alert('You want to clear??');">
       
    <br><br>


	</form>
	

</body>
</html>