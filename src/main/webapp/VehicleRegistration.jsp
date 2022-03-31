<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
    <th><h3>Insurance Upto</h3></th> <th><input type="text"  name="ins_upto"  id="ins_upto" placeholder="MM-DD-YYYY" required><br><br></th></tr>
     <tr>
    <th><h3>Emission Upto</h3></th> <th><input type="text"  name="emi_upto"  id="emi_upt
    o" placeholder="MM-DD-YYYY" required><br><br></th></tr>
    
     </table>
     
     </div>


<br><br>

   
    <input type="submit" name="submit" value="Register"  id="submit" onclick="alert('You want to register this vehicle??');">
    <br><br>
    </form>


</body>
</html>