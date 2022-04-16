<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="ISO-8859-1">
	<title>Insert title here</title>
	
	<style type="text/css">
		body{
			font-family: Hind SemiBold;
		}
	
		table, th, td {
  			border: 1px solid black;
		}
	</style>
</head>
<body>

	<table>
	<c:forEach var="sh" items="${shopDetails}">
	
	<c:set var="sh_id" value="${sh.sh_id}"/>
	<c:set var="sh_name" value="${sh.sh_name}"/>
	<c:set var="sh_phone" value="${sh.sh_phone}"/>
	<c:set var="sh_address" value="${sh.sh_address}"/>
	
	
	<tr>
		<td>S_id</td>
		<td>${sh.sh_id}</td>
	</tr>
	<tr>
		<td>Sh_Name</td>
		<td>${sh.sh_name}</td>
	</tr>
	<tr>
		<td>phoneNo</td>
		<td>${sh.sh_phone}</td>
	</tr>
	<tr>
		<td>Address</td>
		<td>${sh.sh_address}</td>
	</tr>


	</c:forEach>
	</table>
	
	<c:url value="shopupdate.jsp" var="shupdate">
		<c:param name="sh_id" value="${sh_id}"/>
		<c:param name="sh_name" value="${sh_name}"/>
		<c:param name="sh_phone" value="${sh_phone}"/>
		<c:param name="sh_address" value="${sh_address}"/>

	</c:url>
	
	<a href="${shupdate}">
	<input type="button" name="update" value="Update">
	</a>
	
	<br>
	<c:url value="shopdelete.jsp" var="shdelete">
		<c:param name="sh_id" value="${sh_id}" />
		<c:param name="sh_name" value="${sh_name}" />
		<c:param name="sh_phone" value="${sh_phone}" />
		<c:param name="sh_address" value="${sh_address}" />
	
	</c:url>
	<a href="${shdelete}">
	<input type="button" name="delete" value="Delete">
	</a>
	
	
	
</body>
</html>