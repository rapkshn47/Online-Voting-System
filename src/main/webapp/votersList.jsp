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
<link rel="stylesheet" type="text/css" href="style.css" >

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@include file="adminNavbar.jsp" %>
<%
	String a[] = new String[100];
	for(int i=0; i<100; i++) a[i] = "0";
	Class.forName("com.mysql.cj.jdbc.Driver");
	java.sql.Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/onlinevotingsystemdb","root","12345");
	PreparedStatement preparedStatement = conn.prepareStatement("select * from voters");
	ResultSet rs= ((java.sql.Statement) preparedStatement).executeQuery("select * from voters");
		
	int i=0; 
	Statement statement = conn.createStatement() ;
	String sql = "select * from voters";
    rs = statement.executeQuery(sql);


%>
<body>
<br>
<br>
<center> <h3 class="Heading">VotersList</h3> </center><br>
<div >
	<div >
		<TABLE class="votersList" >
        <TR>
           <TH>name</TH>
           <TH>Ph.No:</TH>
           <TH>email</TH>
           <TH>addrs</TH>
           <TH>dob</TH>
           <TH>Voter No.</TH>
        </TR>
        <% while(rs.next()){ %>
        <TR>
           <TD> <%= rs.getString(2) %></TD>
           <TD> <%= rs.getString(3) %></TD>
           <TD> <%= rs.getString(4) %></TD>
           <TD> <%= rs.getString(5) %></TD>
           <TD> <%= rs.getString(6) %></TD>
           <TD> <%= rs.getString(7) %></TD>
        </TR>
        <% } %>
     </TABLE>
	</div>
</div>
</body>
</html>