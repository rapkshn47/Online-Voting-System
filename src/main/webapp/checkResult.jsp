<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>
<%@page import="java.sql.PreparedStatement" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Check Results</title>
<link rel="stylesheet" type="text/css" href="style.css" >

<%
	String a[] = new String[100];
	for(int i=0; i<100; i++) a[i] = "0";
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingsystemdb","root","12345");
	PreparedStatement preparedStatement = conn.prepareStatement("select party,count(party) as votecount from vote group by party");
	ResultSet rs= ((java.sql.Statement) preparedStatement).executeQuery("select party,count(party) as votecount from vote group by party");
		
	int i=0; 
	while(rs.next())
	{
		if(rs.getString("party").equals("Aam Aadmi Party")) a[0] = rs.getString("votecount");
		if(rs.getString("party").equals("Bharatiya Janatha Party")) a[1] = rs.getString("votecount");
		if(rs.getString("party").equals("Indian National Congress")) a[2] = rs.getString("votecount");
	}


%>
</head>
<%@include file="adminNavbar.jsp" %>
<body>
	<div class="form-container">
	<div class="checkTable">
		<table>
			<tr>
				<th>Parties</th>
				<th>Names</th>
				<th>Votes</th>
			</tr>
			<tr>
				<td> <img alt="AAP" src="Images/aap.webp"> </td>
				<td> Aam Aadhmi Party </td>
				<td> <%= a[0] %> </td>
			</tr>
			<tr>
				<td> <img alt="BJP" src="Images/bjp.jpg"> </td>
				<td> Bharatiya Janatha Party </td>
				<td> <%= a[1] %> </td>
			</tr>
			<tr>
				<td> <img alt="AAP" src="Images/cng.png"> </td>
				<td> Indian National Congress </td>
				<td> <%= a[2] %> </td>
			</tr>
			
		</table>
	</div>
	</div>
</body>
</html>