<!DOCTYPE html>
<html lang="en">
<head>
	<title>Admin Login</title>
	
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <script src="loginValidation.js"></script>

</head>
<body style="background-color: #999999;">
	<%@include file="homeHeader.html" %>
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('admin.jpg');"></div>


	



			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form"  name="loginForm" action="admin" method="post">
					<span class="login100-form-title p-b-59">
						Admin Login
					</span>


<div class="wrap-input100 validate-input" data-validate = "Valid Mobile Number is required: ex.123..">
						<span class="label-input100">UserName</span>
						<input class="input100" type="text"  placeholder="Username" id="userid" maxlength="20" name="userid" pattern="^\S+$" >
						<span class="focus-input100"></span>
					</div>


					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password"  placeholder="*************"  id="pass" placeholder="Password" maxlength="20" name="password" pattern="^\S+$">
						<span class="focus-input100"></span>
					</div>
					

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" onClick="return validate()">
								Login
							</button>
						</div>

					</div>
				</form>
			</div>
		</div>
	</div>
	

<%@include file="footer.html" %>

</body>
</html>