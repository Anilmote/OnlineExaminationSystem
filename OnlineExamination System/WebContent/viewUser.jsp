<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Users</title>
</head>
<body>

<%@page import="com.mankraft.RegisterStaffServlet,com.mankraft.Staff.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1>Users List</h1>

<%
List<Staff> list=RegisterStaffServlet.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Fname</th><th>Lname</th><th>Password</th><th>Email</th><th>Gender</th><th>Qualify</th><th>Date</th><th>Experience</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${s.getFname()}</td><td>${s.getLname()}</td><td>${s.getEmail()}</td><td>${s.getPassword()}</td><td>${s.getGender()}</td><td>${s.getQualify()}</td><td>${s.getDate}</td><td>${s.getExperience()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td><td><a href="deleteuser.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
</body>
</html>