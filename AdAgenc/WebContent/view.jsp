<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Advertisements</title>
</head>
<body>
		<div>
		<form action="data">
			<input type="text" name="srch" placeholder="Enter Advertisement Category"><br>
			<button type="submit">Search</button> <button type="submit">Reset</button>
		
		</form><br>
	</div>
	<table border="1">
		<tr>
			<td>Ad ID</td><td>Ad Title</td><td>Product Price</td><td>Product Description</td>
		</tr>
		<c:forEach var="zip" items="${list}">
			<tr>
				<td>${zip.id}</td>
				<td>${zip.name}</td>
				<td>${zip.price}</td>
				<td>${zip.desc}</td>
			</tr>
			
		</c:forEach>
	</table>
</body>
</html>