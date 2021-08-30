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
<title>Student Registration</title>
</head>
<body>
<%@include file="homeHeader.html" %>
<div class="container mt-4">
	
	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4 border">
			<div class="p-2 m-1">
			<h2>Student Registration</h2>
			<hr>
				<form name="studentRegistration" action="reg" method="post">
					
						<label for="name">Enter Full Name</label>
						<input type="text" class="form-control" placeholder="Last First Middle" id="name" name="name" maxlength="50" required >
						<label for="mobile">Enter Mobile Number</label>
						<input type="text" class="form-control" placeholder="Mobile" id="mobile" name="mobile" pattern="[789][0-9]{9}" title="Ener Valid Mobile Number" required >
						<label for="dob">Enter Date Of Birth</label>
						<input type="date" class="form-control" id="dob" name="dob" required >
						<label for="address">Enter Address</label>
						<input type="text" class="form-control" placeholder="Address" id="address" name="address" maxlength="100" required >
						<label for="gender">Gender:</label>
						  <select class="dropdown my-2" name="gender" id="gender">
						    <option value="male">Male</option>
						    <option value="female">Female</option>
						  </select>
						  <label for="std">Select Class:</label>
						  <select class="dropdown my-2" name="std" id="std">
						    <option value="5">5th</option>
						    <option value="6">6th</option>
						    <option value="7">7th</option>
						    <option value="8">8th</option>
						    <option value="9">9th</option>
						    <option value="10">10th</option>
						  </select>
						  <br>
						    <label for="nat">Select Nationality:</label>
						  <select class="dropdown my-2" name="nat" id="nat">
						    <option value="Indian">Indian</option>
						  </select>
						  <br>
						     <label for="rel">Religion:</label>
						  <select class="dropdown my-2" name="rel" id="rel">
						    <option value="hindu">Hindu</option>
						    <option value="hindu-muslim">Hindu-Muslim</option>
						    <option value="cristian">cristian</option>
						  </select>
						  <br>
						  <label for="cast">Enter Cast:</label>
						  <input type="text" class="form-control" placeholder="Cast" id="cast" name="cast" maxlength="20" required >
						  
						  <label for="pass">Create Password:</label>
						  <input type="password" class="form-control" id="pass" placeholder="Password" name="pass" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" maxlength="10"  title="Must contain at least one  number and one uppercase and lowercase letter, and at least 8 or more characters">
						   <label for="cpass">Confirm Password:</label>
						  <input type="password" class="form-control" id="cpass" placeholder="Confirm Password" name="cpass" maxlength="10" pattern="^\S+$">
						<button type="submit"  onClick="return validate()" class="btn btn-success mt-2" style="width:100%">Registration</button>
				</form>
			</div>
		</div>
		<div class="col-md-4"></div>
	</div>
	 
</div>


<%@include file="footer.html" %>

</body>
</html>