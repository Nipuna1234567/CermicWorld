<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Delete</title>

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





<%
 String p_id= request.getParameter("p_id");
 String p_type=request.getParameter("p_type");
 String p_date=request.getParameter("p_date");
 String p_qty=request.getParameter("p_qty");
 String p_limited=request.getParameter("p_limited");
 String p_less=request.getParameter("p_less");
 String p_price=request.getParameter("p_price");

%>
<form name="myForm" action="ProductDeleteServlet" onsubmit="return validateForm()" method="post" >

<div class="topic">
<h1><center>Delete Product Details</h1>	
</div>

<table>
   <tr>
   <th><h3>Product ID</h3></th> <th><input type="text"  name="p_id" id="p_id" placeholder="XX-XXXX" value="<%=p_id %>" readonly><br><br></th></tr>
    <tr>
    <th><h3>Product type</h3></th><th><select name="p_type" id="p_type"   >
			<option  value="<%=p_type%>" ><%=p_type%>  </option>
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
   <th> <h3>Produced Date</h3></th>  <th><input  type="text" name="p_date" name="text" id="datepicker" placeholder="DD-MM-YYYY" value="<%=p_date %>"readonly><br><br></th></tr>
    <tr>
     <th> <h3>Quantity</h3></th>  <th><input  type="text" name="p_qty" name="text" id="p_qty" placeholder="QTY" value="<%=p_qty %>"><br><br></th></tr>
    <tr>
     <th> <h3>Limited Quantity</h3></th>  <th><input  type="text" name="p_limited" name="text" id="p_limited" placeholder="50" value="<%=p_limited %>"required><br><br></th></tr>
    <tr>
    <th><h3>Less Quantity</h3></th> <th><input type="text"  name="p_less"  id="p_less" placeholder="000"  value="<%=p_less %>"required><br><br></th></tr>
     <tr>
    <th><h3>Product Price</h3></th> <th><input type="text"  name="p_price"  id="p_price" placeholder="0000"  value="<%=p_price %>" required><br><br></th></tr>
     </table>
    
      <input type="submit" name="delete" value="Delete" onclick="alert('Attention!!This Product is Deleted!! ');" id="delete">
    <br><br>


	</form>
</body>
</html>