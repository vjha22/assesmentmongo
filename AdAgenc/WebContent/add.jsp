<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Advertisements</title>
</head>
<body>
	<form action="data" method=post>
		Ad Title: <input type="text" name="title" placeholder="Ad Title"><br>
		Product Price: <input type="text" name="price" placeholder="Ad Price"><br>
		Product Description: <textarea name="desc" placeholder="Description"></textarea><br>
		<input type="submit" value="Add">
	</form>
	<% if (request.getAttribute("counter")!=null)
		out.print("Data Added Successfuly.");
		%>
	<a href="index.jsp">Home</a>
</body>
</html>