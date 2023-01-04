<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Welcome</title>
<link rel="stylesheet" type="text/css" href="style.css" >
</head>
<%@include file="navbar.jsp" %>
<body>
	<div class="form-container">
		<form action="Vote" method="post">
			<label for="voteNumber" class="form-elements">
				<b>Enter your Card Number :</b>
			</label>
			<br>
			<input id="voterNumber" class="form-elements form-input" name="voterNumber" type="text" required>
			<br>
			<label for="party" class="form-elements"> <b>Choose your party :</b> </label><br>
			<input type="radio" id="aap" name="party" value="Aam Aadmi Party">
			<label for="aap" ><img class="party_img" alt="aap" src="Images/aap.webp"></label><br>
			<input type="radio" id="bjp" name="party" value="Bharatiya Janatha Party">
			<label for="bjp" ><img class="party_img" alt="bjp" src="Images/bjp.jpg"></label><br>
			<input type="radio" id="cng" name="party" value="Indian National Congress">
			<label for="cng" ><img class="party_img" alt="cng" src="Images/cng.png"></label><br>
			<button type="submit" class="form-elements form-button">Submit</button>
		</form>
	</div>
</body>
</html>