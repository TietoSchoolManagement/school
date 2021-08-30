<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Add Assignment</title>
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
				<h3>Add Assignment</h3>
				<hr>
				
					<form action="addAssignment" method="post">
					<input type="hidden" value="${id}" name="id">
					<label for="std">Class:</label>
											  <select class="dropdown my-2" name="std" id="std">
											    <option value="5">5th</option>
											    <option value="6">6th</option>
											     <option value="7">7th</option>
											      <option value="8">8th</option>
											       <option value="9">9th</option>
											        <option value="10">10th</option>
												  </select>
					<label for="subject">Class:</label>
											  <select class="dropdown my-2" name="subject" id="subject">
											    <option value="1">marathi</option>
											    <option value="2">english</option>
											     <option value="3">mathematics</option>
											      <option value="4">science</option>
											       <option value="5">social science</option>
												  </select>
					<label for="date">Completion Date:</label>
					<input class="form-control" type="date" name="end_date" required>
					<textarea class="form-control my-2" rows="5" cols="100" placeholder="Write Assignment Questions Here.." maxlength="1000" name="text" required></textarea>
					<button style="width:100%" type="submit" class="btn btn-success">Add Assignment</button>
					</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>

</div>

<%@include file="footer.html" %>
</body>
</html>