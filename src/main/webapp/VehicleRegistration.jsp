<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transport Vehicle Registration</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/deliver2.css">

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
  
   <script>
  $( function() {
    $( "#datepicker2" ).datepicker({
      showOtherMonths: true,
      selectOtherMonths: true
    });
  } );
  </script>
</head>
<body>


<form name="myForm" action="VehicleRegistrationservlet" onsubmit="return validateForm()" method="post" >


<center> <h2>Transport Vehicle Registration</h2> </center><br><br>

           <div class="billformInner">
<center><table>

   <tr>
   <th><h3>Vehicle No</h3></th> <th><input type="text"  name="vehi_no" id="vehi_no"  title="Enter your vehicle licen plate No" placeholder="XX-XXXX" ><br><br></th></tr>
    <tr>
    <th><h3>Vehicle type</h3></th> <th><select name="vehi_type" id="vehi_type">
			
 				 <option value="lorry">Lorry</option>
  				 <option value="bike">Bike</option>
                 <option value="three wheel">Three wheel</option>
                </select> <br><br></th></tr>
     <tr>
   <th> <h3>Vehicle brand</h3></th>  <th><input  type="text" name="vehi_brand" name="text" id="vehi_brand" placeholder="Vehicle brand"  required><br><br></th></tr>
    <tr>
     <th> <h3>Chassi No</h3></th>  <th><input  type="text" name="chassi_no" name="text" id="chassi_no" placeholder="Chassi No" required><br><br></th></tr>
    <tr>
     <th> <h3>Vehicle Mileage(Km)</h3></th>  <th><input  type="text" name="vehi_mileage" name="text" id="vehi_mileage"  placeholder="00Km" required><br><br></th></tr>
    <tr>
    <th><h3>Insurance Upto</h3></th> <th><input type="text"  name="ins_upto"  id="datepicker" placeholder="MM-DD-YYYY" required><br><br></th></tr>
     <tr>
    <th><h3>Emission Upto</h3></th> <th><input type="text"  name="emi_upto"  id="datepicker2" placeholder="MM-DD-YYYY" required><br><br></th></tr>
    
     </table>
     
     </div>


<br><br>

   
    <input type="submit" name="submit" value="Register"  id="submit" onclick="alert('You want to register this vehicle??');">
    <br><br>
    </form>


</body>
</html>