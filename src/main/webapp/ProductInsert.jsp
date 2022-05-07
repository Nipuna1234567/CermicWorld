<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">


<title>Insert Products</title>

<script src="web/js/de.js"> </script>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <title>jQuery UI Datepicker - Dates in other months</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
    $( "#datepicker" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true
    });
  } );
  </script>
</head>
<body>


<form name="myForm" action="ProductInsertServlet" onsubmit="return validateForm()" method="post" >

<center> <h2> Insert Materials</h2> </center> <br><br>

           <div class="billformInner"></div>

 <center>        
<table>

   <tr>
   <th><h3>Product No</h3></th> <th><input type="text"  name="p_id" id="p_id" placeholder="P001" required ><br><br></th></tr>
    <tr>
    <th><h3>Product Type</h3></th> <th><select name="p_type" id="p_type"  required>
    
			
 				 <option  value="Cups">Cups</option>
  				 <option value="Soup Bowls">Soup Bowls</option>
                 <option value="Dishes">Dishes</option>
                  <option value="Rice Bowls">Rice Bowls</option>
                  <option value="Cake Stands">Cake Stands</option>
  				 <option value="Mugs">Mugs</option>
                 <option value="Jugs">Jugs</option>
                  <option value="Plates">Plates</option>
                 
                </select> <br><br></th></tr>
     <tr>
      <th><h3>Produced Date</h3></th> <th><input type="text"  name="p_date" id="datepicker" placeholder="DD-MM-YYYY" required ><br><br></th></tr>
      
      <tr>
      <th><h3>Product Quantity</h3></th> <th><input type="text"  name="p_qty" id="p_qty" placeholder="10" required ><br><br></th></tr>
      
      <tr>
      <th><h3>Limited Quantity</h3></th> <th><input type="text"  name="p_limited" id="p_limited" placeholder="50" pattern="[50]{1,2}" title="Limited product is 50" required ><br><br></th></tr>
      
      <tr>
      <th><h3>Product Price</h3></th> <th><input type="text"  name="p_price" id="p_price" placeholder="1000" required ><br><br></th></tr>
      
     
    
     </table>
    <br>
    <br>
     
      <input type="submit" name="submit" value="Insert"  id="submit" onclick="alert('You want to insert this material??');">
      
    <input type="reset" name="reset" value="Clear"  id="reset" onclick="alert('You want to clear this??');">
       
    <br><br>


	</form>

</body>
</html>