<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Log out</title>
</head>
<body>
	<%
		HttpSession session1 = request.getSession();
		session1.removeAttribute("adminName");
		response.sendRedirect("index.jsp");
	%>
</body>
</html>