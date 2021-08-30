<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Student Profile</title>
</head>
<body>
<%if(session.getAttribute("s_id")==null) {
	response.sendRedirect("student_login.jsp");
}%>

<%@include file="studentHeader.html" %>

<div class="container">

	<div class="row mt-4">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			
			<div class="border p-2">
			<h1>Welcome</h1>
			<hr>
			<label for="id">Student ID:</label>
			<input class="form-control" type="text" value="${s_id}" id="id" disabled>
			<label for="class">Class:</label>
			<input class="form-control" type="text" value="${std}" id="class" disabled>
			<label for="name">Name:</label>
			<input class="form-control" type="text" value="${name}" id="name" disabled>
			<label for="mobile">Mobile Number:</label>
			<input class="form-control" type="text" value="${mobile}" id="mobile" disabled>
			<label for="dob">Date Of Birth:</label>
			<input class="form-control" type="text" value="${dob}" id="dob" disabled>
			<label for="address">Address:</label>
			<input class="form-control" type="text" value="${address}" id="address" disabled>
			<label for="status">Status:</label>
			<input class="form-control" type="text" value="${status}" id="status" disabled>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>

</div>



<%@include file="footer.html" %>
</body>
</html>