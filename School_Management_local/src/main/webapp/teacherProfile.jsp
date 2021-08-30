<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Teacher</title>
</head>
<body>

<%if(session.getAttribute("id")==null) {
	response.sendRedirect("teacher_login.jsp");
}%>

<%@include file="teacherHeader.jsp" %>
<div class="container">

	<div class="row mt-4">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			
			<div class="border p-2">
			<h1>Welcome</h1>
			<hr>
			<label for="id">Teacher ID:</label>
			<input class="form-control" type="text" value="${id}" id="id" disabled>
			<label for="name">Name:</label>
			<input class="form-control" type="text" value="${name}" id="name" disabled>
			<label for="mobile">Mobile Number:</label>
			<input class="form-control" type="text" value="${mobile}" id="mobile" disabled>
			<label for="address">Address:</label>
			<input class="form-control" type="text" value="${address}" id="address" disabled>
			<label for="education">Education:</label>
			<input class="form-control" type="text" value="${education}" id="education" disabled>
			<label for="hiredate">Hiredate:</label>
			<input class="form-control" type="text" value="${hiredate}" id="hiredate" disabled>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>

</div>
<%@include file="footer.html" %>
</body>
</html>