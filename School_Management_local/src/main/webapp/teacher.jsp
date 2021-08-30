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

<div class="container mt-4">

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<div class="border p-2">
				<h4>Welcome ${name }</h4><hr>
				<h3>You Are Class Teacher of class : ${std }<sup>th</sup> class</h3>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>

</div>

<%@include file="footer.html" %>
</body>
</html>