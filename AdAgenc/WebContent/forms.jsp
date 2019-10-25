<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Enter the details</title>
</head>
<body>
<form action="/data" method="post">
		 Advertisement Title: <input type="text" name="title" placeholder="Title"><br>
		 City: <input type="text" name="city" placeholder="Enter City"><br>
		 Description: <textarea name="desc" placeholder="Description"></textarea><br>
		 email:<input type="text" name="email" placeholder="email" ><br>
		
	</form>
	<% if (request.getAttribute("counter")!=null)
		out.print("Data Added Successfuly.");
		%>
	<a href="add.jsp">Add </a>&nbsp;

</body>
</html>