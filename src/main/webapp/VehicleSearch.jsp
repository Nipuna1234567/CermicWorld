<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transport Vehicle Search</title>
<link rel="stylesheet" href="web/css/deliver.css">
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css"/>
<link rel="stylesheet" href="web/css/deliver2.css">

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