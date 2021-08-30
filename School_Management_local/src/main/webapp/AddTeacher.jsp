<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <script src="studentRegistration.js"></script>
<meta charset="ISO-8859-1">
<title>Add Teacher</title>
</head>
<body>
<%if(session.getAttribute("s_id")==null) {
	response.sendRedirect("admin_login.jsp");
}%>

<%@include file="adminheader.html" %>
<div class="container mt-4">
	
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 border">
			<div class="p-2 m-1">
			<h2>Add Teacher</h2>
			<hr>
				<form name="studentRegistration" action="AddTeacher" method="post">
					
						<label for="name">Enter Full Name</label>
						<input type="text" class="form-control" placeholder="Last First Middle" id="name" name="name" maxlength="50" required >
						<label for="mobile">Enter Mobile Number</label>
						<input type="text" class="form-control" placeholder="Mobile" id="mobile" name="mobile" pattern="[789][0-9]{9}" title="Ener Valid Mobile Number" required >
						<label for="hiredate">Hire Date</label>
						<input type="date" class="form-control" id="hiredate" name="hiredate" required >
						<label for="education">Education</label>
						<input type="text" class="form-control" placeholder="Degree" id="degree" name="degree" maxlength="100" required >
						
						<label for="address">Enter Address</label>
						<input type="text" class="form-control" placeholder="Address" id="address" name="address" maxlength="100" required >
						<label for="sal">Enter Salary</label>
						<input type="text" class="form-control" placeholder="Salary" id="sal" name="sal" pattern="\d*" maxlength="7" required >
						
						<button type="submit"  class="btn btn-success mt-2" style="width:100%">Add</button>
				</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
	 
</div>


<%@include file="footer.html" %>

</body>
</html>