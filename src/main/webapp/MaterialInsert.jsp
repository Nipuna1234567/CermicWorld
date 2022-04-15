<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       
<!DOCTYPE html>
<html>
<head>

	
<meta charset="ISO-8859-1">
<title>Inser Raw Materials</title>







<script>
function valid()
{
if(document.getElementById("mat_type").value=="Ball Clays")
{

 if((document.getElementById("mat_name").value=="Ball Clay-Bell Dark") ||(document.getElementById("mat_name").value=="Ball Clay-Foundry Cream"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}
else if(document.getElementById("mat_type").value=="Bentonites")
{

 if((document.getElementById("mat_name").value=="Bentonites-325 mesh" )|| (document.getElementById("mat_name").value=="Bentonites-HPM-20"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

 else if(document.getElementById("mat_type").value=="Fireclays")
{

 if((document.getElementById("mat_name").value=="Fireclay-IMCO-400") || (document.getElementById("mat_name").value=="Fireclay-Bond-40"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

else if(document.getElementById("mat_type").value=="Kaolins")
{

 if((document.getElementById("mat_name").value=="Kaolins-6")||(document.getElementById("mat_name").value=="Kaolins-Helmer"))
{
alert ("Material Type is matching to the Material Name!!");
return true;
}
else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}

 else
{
alert("Material Type is not matching to the Material Name!!");
return false;
}
}
</script>





</head>
<body>

<form name="myForm" action="MatInsertServlet" onsubmit="return validateForm()" method="post" >
<h2> Insert Materials</h2><br><br>

           <div class="billformInner"></div>

           
<table>

   <tr>
   <th><h3>Material No</h3></th> <th><input type="text"  name="mat_id" id="mat_id" placeholder="M001" required ><br><br></th></tr>
    <tr>
    <th><h3>Material Type</h3></th> <th><select name="mat_type" id="mat_type" required>
			<option value="***********">***********</option>
 				 <option value="Ball Clays">Ball Clays</option>
  				 <option value="Bentonites">Bentonites</option>
                 <option value="Fireclays">Fireclays</option>
                  <option value="Kaolins">Kaolins</option>
                 
                </select> <br><br></th></tr>
     <tr>
      <tr>
    <th><h3>Material Name</h3></th> <th><select name="mat_name" id="mat_name" onchange="return valid()" required>
    
   <option value="***********">***********</option>
			<option value="Ball Clay-Bell Dark">Ball Clay-Bell Dark</option>
  				 <option value="Ball Clay-Foundry Cream">Ball Clay-Foundry Cream</option>
  				  <option value="Bentonites-325 mesh">Bentonites-325 mesh</option>
  				 <option value="Bentonites-HPM-20">Bentonites-HPM-20</option>
  				 <option value="Fireclay-IMCO-400">Fireclay-IMCO-400</option>
  				 <option value="Fireclay-Bond-40">Fireclay-Bond-40</option>
                  <option value="Kaolins-6">Kaolins-6</option>
  				 <option value="Kaolins-Helmer">Kaolins-Helmer</option>
                 
                </select> <br><br></th></tr>
    
                 
                 
                   <tr>
    <th><h3>Material Use For</h3></th> <th><select name="mat_use" id="mat_use">
			
 				 <option value="Porcelain">Porcelain</option>
  				 <option value="Stoneware">Stoneware</option>
  				  <option value="Earthenware">Earthenware</option>
  				 <option value="Bone China">Bone China</option>
  				 
  				</select> <br><br></th></tr>
                 
                  <tr>
   <th><h3>Quantity</h3></th> <th><input type="text"  name="mat_qty" id="mat_qty" placeholder="00" ><br><br></th></tr>
    
  
    <tr>
   <th> <h3>Limited Material</h3></th>  <th><input  type="text" name="mat_limit" name="text" id="mat_limit" placeholder="50" pattern="[50]{1,2}" title="Limited material is 50" required ><br><br></th></tr>
   
     <tr>
   <th> <h3>Price</h3></th>  <th><input  type="text" name="mat_price" name="text" id="mat_price" placeholder="Rs"><br><br></th></tr>
   
     </table>
    
      <input type="submit" name="submit" value="Insert"  id="submit" onclick="alert('You want to insert this material??');">
      
       <input type="submit" name="clear" value="Clear"  id="clear" onclick="alert('You want to clear??');">
       
    <br><br>


	</form>
	

</body>
</html>