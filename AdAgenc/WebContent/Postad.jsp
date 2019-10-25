<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdAgency</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>
<h3>Choose the category of Advertisement:</h3>
						
<form action="/ser" method="post">
<table align="center">
<tr>
<td>
<input type="radio" name="Community" value="community">Community</td>
</tr>
<tr>
<td>
<input type="radio" name="Events" value="events">Events</td>
</tr>
<tr>
<td>
<input type="radio" name="Sale" value="sale">Sale</td></tr>
<tr>
<td>
<input type="radio" name="Housing" value="housing">housing</td></tr> 
<tr>
<td>

<input type="radio" name="jobs" value="jobs">Jobs</td></tr> 
<tr>

<td>
<input type="radio" name="Services" value="services">services</td></tr> 
<tr>
<td>
<a href="forms.jsp" type="button">Submit</a>
</tr>
</table>
</form>
</body>
</html>

