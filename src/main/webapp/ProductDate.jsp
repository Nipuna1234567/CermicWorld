<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h2>View Production Report</h2></center><br><br>
<br>
<br>
<br>
<br>

<form action="ProductReport.jsp">


<tr>
<td><label>Year &nbsp; :</label></td>
<td><input type="text" name="year" placeholder="&nbsp;2021" autocomplete="on"required></td>
</tr>
<br>
<br>
<br>
<tr>
<td><label>Month : </label></td>
<td><select name="month">
<option value="00">Select Month</option>
<option value="01">January</option>
<option value="02">February</option>
<option value="03">March</option>
<option value="04">April</option>
<option value="05">May</option>
<option value="06">June</option>
<option value="07">July</option>
<option value="08">August</option>
<option value="09">September</option>
<option value="10">October</option>
<option value="11">November</option>
<option value="12">December</option>
</select></td>
</tr>

<div class="onebtn">
<!--<input type="submit" id="submitBtn" value="Submit">-->
<button type="submit"  name="submit"  id="billb" ><i class="fa fa-search"></i> View Monthly Production</button>

</div>
</form>
</body>
</html>