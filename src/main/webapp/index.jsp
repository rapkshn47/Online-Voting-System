<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Online Voting System</title>
		<link href="https://fonts.googleapis.com/css2?family=Nunito:wght@200;400&family=Roboto+Condensed:wght@300&family=Sora:wght@100&family=Work+Sans:wght@100&display=swap" rel="stylesheet">
	</head>
	<link rel="stylesheet" type="text/css" href="style.css" >
	<%@include file="navbar.jsp" %>
	<body>
		<div class="form-container">
			<form action="voterLogin" method="post">
				<h3>Enter Voting Number</h3><br>
				<label for="voterNumber" class="form-elements">
				<b>Voter Id</b>
				</label>
				<input name="voterNumber" id="voterNumber" class="form-elements form-input" type="text"  required>
				<br>
				<button type="submit" class="form-elements form-button" >Login</button><br>
				<a href="adminLogin.jsp" class="admin-button" ><h1>Log in as Admin</h1></a>
			</form><br>
			
		</div>
	</body>
</html>