<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form name="myForm" action="ShopInsertServlet" onsubmit="return validateForm()" method="post" >

 


 <h2>Add New Shops</h2></center><br><br>

 

           <div class="billformInner">
<center><table>

 

   <tr>
   <th><h3>Shop ID</h3></th> <th><input type="text"  name="sh_id" id="sh_id"  title="Enter shop id" placeholder="ID" ><br><br></th></tr>
     <tr>
   <th> <h3>Shop Name</h3></th>  <th><input  type="text" name="sh_name" name="text" id="sh_name" placeholder="Shop Name"  required><br><br></th></tr>
    <tr>
     <th> <h3>Phone Number</h3></th>  <th><input  type="text" name="sh_phone" name="text" id="sh_phone" placeholder="Phone No" required><br><br></th></tr>
    <tr>
     <th> <h3>Address</h3></th>  <th><input  type="text" name="sh_address" name="text" id="sh_address"  placeholder="Address" required><br><br></th></tr>
     
     </table>
     
     </div>

 


<br><br> 

 

    <input type="submit" name="Clear" value="Clear"  id="clear">
    <input type="submit" name="submit" value="Save"  id="submit" onclick="alert('You want to save the shop??');">
    <br><br>
    </form>

</body>
</html>