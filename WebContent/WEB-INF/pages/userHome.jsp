<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Home</title>
<link rel="stylesheet" type="text/css" href="css/newgenOjt.css" />
</head>
<body>
<br/><center><strong style="color: maroon;">Newgen OJT</strong> </center><br/><br/>

<table>
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>Role</th>
    <th>Email</th>
    <th>Contact</th>
    <th>Action</th>
    <th>Action</th>
  </tr>
  <c:forEach var="user" items="${USERLIST}">
  <tr>
    <td>${user.first_name}</td>
    <td>${user.last_name}</td>
    <td>${user.role}</td>
    <td>${user.email}</td>
    <td>${user.contact_number}</td>
    <td><a href="editUser?userId=${user.id}" class="a a2">Edit User Detail</a></td>
    <td><a href="deleteUser?userId=${user.id}" class="a a2">Delete User</a></td>
  </tr>
  </c:forEach>
</table>
</body>
</html>