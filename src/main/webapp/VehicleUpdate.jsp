<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
 String vehi_no= request.getParameter("vehi_no");
 String vehi_type=request.getParameter("vehi_type");
 String vehi_brand=request.getParameter("vehi_brand");
 String chassi_no=request.getParameter("chassi_no");
 String vehi_mileage=request.getParameter("vehi_mileage");
 String ins_upto=request.getParameter("ins_upto");
 String emi_upto=request.getParameter("emi_upto");

%>
<form name="myForm" action="VehicleUpdateServlet" onsubmit="return validateForm()" method="post" >

<div class="topic">
<h1><center>Update Vehicle Details</h1>	
</div>

<table>
   <tr>
   <th><h3>Vehicle No</h3></th> <th><input type="text"  name="vehi_no" id="vehi_no" placeholder="XX-XXXX" value="<%=vehi_no %>" readonly><br><br></th></tr>
    <tr>
    <th><h3>Vehicle type</h3></th><th><select name="vehi_type" id="vehi_type"   >
			<option  value="<%=vehi_type%>" ><%=vehi_type%>  </option>
 				 <option  value="Lorry">Lory</option>
  				 <option value="bike" >Bike </option>
                 <option value="three wheel">Three wheel </option>
                  </select> <br><br></th></tr>
     <tr>
   <th> <h3>Vehicle brand</h3></th>  <th><input  type="text" name="vehi_brand" name="text" id="vehi_brand" placeholder="Vehicle Brand" value="<%=vehi_brand %>"readonly><br><br></th></tr>
    <tr>
     <th> <h3>Chassi No</h3></th>  <th><input  type="text" name="chassi_no" name="text" id="chassi_no" placeholder="Chassi No" value="<%=chassi_no %>"readonly><br><br></th></tr>
    <tr>
     <th> <h3>Vehicle Mileage(Km)</h3></th>  <th><input  type="text" name="vehi_mileage" name="text" id="vehi_mileage" placeholder="00Km" value="<%=vehi_mileage %>"required><br><br></th></tr>
    <tr>
    <th><h3>Insurance Upto</h3></th> <th><input type="text"  name="ins_upto"  id="datepicker" placeholder="MM-DD-YYYY"  value="<%=ins_upto %>"required><br><br></th></tr>
     <tr>
    <th><h3>Emission Upto</h3></th> <th><input type="text"  name="emi_upto"  id="datepicker2" placeholder="MM-DD-YYYY"  value="<%=emi_upto %>" required><br><br></th></tr>
     </table>
    
     <input type="submit" name="update" value="Update" id="update"  onclick="alert('Successfully Update Vehicle Details!');">
    <br><br>


	</form>
</body>
</html>