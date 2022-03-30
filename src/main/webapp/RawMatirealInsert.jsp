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
<h2> Insert New Materials</h2></center><br><br>

           <div class="billformInner">
<table>

   <tr>
   <th><h3>Material No</h3></th> <th><input type="text"  name="mat_id" id="mat_id" placeholder="RM001" ><br><br></th></tr>
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
                 
               
                 </select> <br><br></th></tr>
                 
                  <tr>
   <th><h3>Quantity</h3></th> <th><input type="text"  name="mat_qty" id="mat_qty" placeholder="RM001" ><br><br></th></tr>
    
  
    <tr>
   <th> <h3>Limited Material</h3></th>  <th><input  type="text" name="mat_limit" name="text" id="mat_limit" placeholder="number"><br><br></th></tr>
   
     <tr>
   <th> <h3>Price</h3></th>  <th><input  type="text" name="mat_price" name="text" id="mat_uprice" placeholder="Rs"><br><br></th></tr>
   
     </table>
    
      <input type="submit" name="submit" value="Insert"  id="submit">
      
       <input type="submit" name="clear" value="Clear"  id="clear">
       
    <br><br>


	</form>
	

</body>
</html>