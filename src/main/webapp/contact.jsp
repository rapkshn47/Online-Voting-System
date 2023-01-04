<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Online Voting System</title>
		<link rel="stylesheet" type="text/css" href="style.css" >
		<%@include file="navbar.jsp" %>
	</head>
	<body>
		<div class="form-container">
			<form action="ContactUs" method="post" >
				<label id="name" class="form-elements">
					<b>Name :</b>
				</label>
				<br>
				<input id="name" name="name" class="form-elements form-input" type="text">
				<br>
				<label id="number" class="form-elements">
					<b>Number:</b>
				</label>
				<br>
				<input id="number" name="number" class="form-elements form-input" type="text">
				<br>
				<label id="email" class="form-elements">
					<b>Email-ID :</b>
				</label>
				<br>
				<input id="email" name="email" class="form-elements form-input" type="text">
				<br>
				<label id="comment" class="form-elements">
					<b>Comment :</b>
				</label>
				<br>
				<input id="comment" name="comment" class="form-elements form-input" type="text">
				<br>
				<button class="form-elements form-button" type="submit">Submit</button>
			</form>
		</div>
	</body>
</html>