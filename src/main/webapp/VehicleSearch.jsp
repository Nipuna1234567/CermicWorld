<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transport Vehicle Search</title>
</head>
<body>

<h2>Search Vehicle</h2><br><br>	
		


<form action="VehicleSearchServlet" method="post">

<lable>Vehicle Number:</lable>

<a href="#">
<input type="text" name="vehi_no" title="Enter Your Vehicle Number" required  ><br><br><br>
</a>
<a href="${update}">

 
 <button type="submit"  name="submit"  id="search" ><i class="fa fa-search"></i> Search</button>
</a>

</form>



</body>
</html>