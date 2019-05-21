<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Newgen OJT</title>
<!-- <base href="/"> -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/x-icon" href="favicon.ico">
<link rel="stylesheet" type="text/css" href="css/newgenOjt.css" />
<script type="text/javascript" src="runtime.js"></script>
<script type="text/javascript" src="polyfills.js"></script>
<script type="text/javascript" src="styles.js"></script>
<script type="text/javascript" src="vendor.js"></script>
<script type="text/javascript" src="main.js"></script></body>
</head>
<body>
<br/><center><h2>Newgen OJT</h2> </center>
<center><a href="fetchAllUser" class="a a2">User List</a></center>
<center><a href="htmlToImg" class="a a2">HtmlToImg</a></center>
<c:choose>
<c:when test="${USER !=null }">
<div class="user-page">
  <div class="form">
     <form class="login-form" action="updateUser" method="post">
	 <input type="text" name="first_name" value="${USER.first_name}"/>
	 <input type="text" name="last_name" value="${USER.last_name}"/>
     <input type="text" name="email" value="${USER.email}"/>
     <input type="password" name="password" value="${USER.password}" />
     <input type="text" name="contact_number" value="${USER.contact_number}"/>
     <select class="drop" name="role">
	 <option selected="selected" value="${USER.role}">${USER.role}</option>
	 <option value="ADMIN">ADMIN</option>
	 <option value="SUPPLIER">SUPPLIER</option>
	 <option value="USER">USER</option>
	 </select>
	 <input type="hidden" name="id" value="${USER.id}"/>
     <button type="submit">Update</button>
    </form>
  </div>
</div>
</c:when>
<c:otherwise>
<div class="user-page">
  <div class="form">
    <form class="login-form" action="createUser" method="post">
	  <input type="text" name="first_name" placeholder="First Name"/>
	  <input type="text" name="last_name" placeholder="Last Name"/>
      <input type="text" name="email" placeholder="email"/>
      <input type="password" name="password" placeholder="password"/>
      <input type="text" name="contact_number" placeholder="Contact Number"/>
	  <select class="drop" name="role">
	  <option value="-1">Select Profile</option>
	  <option value="ADMIN">ADMIN</option>
	  <option value="SUPPLIER">SUPPLIER</option>
	  <option value="USER">USER</option>
	  </select>
      <button type="submit">Register</button>
    </form>
  </div>
</div>
</c:otherwise>
</c:choose>


</body>
</html>