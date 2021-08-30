<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Student Home</title>
</head>
<body>
<%if(session.getAttribute("s_id")==null) {
	response.sendRedirect("student_login.jsp");
}%>

<%@include file="studentHeader.html" %> 

<div class=" mx-2 mt-5">

<div class="row">

<div class="col-md-3">
<div class="border p-2">
	<h4>Welcome ${name}</h4>
	<hr>
	<h5>Class : ${std }</h5>
	<h5>Class Teacher Name: </h5>
	${classteacher }
	<h5>Class Teacher Contact : </h5>
	${tmobile}
	
</div>

</div>
<div class="col-md-6"  style="text-align:center">
	<div class="border p-2" >
	 <h4>Vijaysinh Patil Vidhyalay </h4>
	 Eon IT Park Kharadi Pune
	 <hr>
	 contact : 2220254410
	 email : vpv@school.com
	 <br>
	<br>
	<br>
	<br>
	
	</div>
</div>
<div class="col-md-3">
<div class="border p-2">
	<h4>Notice Board</h4>
	<hr>
	<br>
	<br>
	<br>
	<br>
	
</div>


</div>

</div>


<%@include file="footer.html" %>
</body>
</html>