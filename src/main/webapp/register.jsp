<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="adminNavbar.jsp" %>
<body>
	<div class="form-container">
		<form action="RegisterUser" method="post">
			<label for="name" class="form-elements"> <b>Name :</b> </label>
			<br>
			<input id="name" name="name" class="form-elements form-input" type="text">
			<br>
			<label for="number" class="form-elements"> <b>Phone Number :</b> </label>
			<br>
			<input id="number" name="number" class="form-elements form-input" type="text">
			<br>
			<label for="email" class="form-elements"> <b>Email Id :</b> </label>
			<br>
			<input id="email" name="email" class="form-elements form-input" type="text">
			<br>
			<label for="vnum" class="form-elements"> <b>Voter Card Number :</b> </label>
			<br>
			<input id="vnum" name="vnum" class="form-elements form-input" type="text">
			<br>
			<label for="address" class="form-elements"> <b>Address :</b> </label>
			<br>
			<input id="address" name="address" class="form-elements form-input" type="text">
			<br>
			<label for="dob" class="form-elements"> <b>Date Of Birth :</b> </label>
			<br>
			<input id="dob" name="dob" class="form-elements form-input" type="text">
			<br>
			<button class="form-elements form-button" type="submit">Register</button>
		</form>
	</div>
</body>
</html>