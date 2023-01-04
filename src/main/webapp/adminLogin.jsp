<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Login</title>
<link rel="stylesheet" type="text/css" href="style.css" >
</head>
<%@include file="navbar.jsp" %>
<body>
	<div class="form-container">
		<form action="adminLogin" method="post">
			<h3>Admin Login</h3>
			<label for="name" class="form-elements form-label"> <b>Name :</b> </label><br>
			<input id="name" name="adminName" class="form-elements form-input " type="text" required><br>
			<label for="password" class="form-elements form-label"> <b>Password :</b> </label><br>
			<input id="password" name="adminPassword" class="form-elements form-input " type="password" required><br>
			<button type="submit" class="form-elements form-button" >Login</button> 
		</form>
	</div>
</body>
</html>