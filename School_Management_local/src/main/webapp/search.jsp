<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Search Student</title>
</head>
<body>
<%if(session.getAttribute("id")==null) {
	response.sendRedirect("admin_login.jsp");
}%>

<%@include file="adminheader.html" %>

<div class="container">
		<form action="search" method="get">
			<div class="row mt-4">
			<div class="col-md-4"></div>
			<div class="col-md-4">
			<input class="form-control" type="text" placeholder="Sudent Name" name="name">
			<button style="width:100%" type="submit" class="btn btn-primary mt-2" >Search</button>
			</div>
			<div class="col-md-4"></div>
			</div>
		</form>
		
	
</div>

<%@include file="footer.html" %>

</body>
</html>