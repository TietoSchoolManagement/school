<!DOCTYPE html>
<html lang="en">
<head>
	<title>Teacher Login</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet"
 integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">
 <script src="loginValidation.js"></script>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="util.css">
	<link rel="stylesheet" type="text/css" href="main.css">
<!--===============================================================================================-->

</head>
<%@include file="homeHeader.html" %>
<body style="background-color: #999999;">
	
	<div class="limiter">
		<div class="container-login100">
			<div class="login100-more" style="background-image: url('teacher.jpg');"></div>


			


			<div class="wrap-login100 p-l-50 p-r-50 p-t-72 p-b-50">
				<form class="login100-form validate-form" name="loginForm" action="teacher" method="post">
					<span class="login100-form-title p-b-59">
						Teacher Login
					</span>


<div class="wrap-input100 validate-input" data-validate = "Valid Mobile Number is required: ex.123..">
						<span class="label-input100">UserName</span>
						<input class="input100" type="tel" placeholder="Username(Mobile Number)" id="userid" name="userid" maxlength="10" pattern="[789][0-9]{9}" title="Ener Valid Mobile Number">
						<span class="focus-input100"></span>
					</div>


					

					<div class="wrap-input100 validate-input" data-validate = "Password is required">
						<span class="label-input100">Password</span>
						<input class="input100" type="password"  placeholder="*************" id="pass"  maxlength="20" name="password" pattern="^\S+$">
						<span class="focus-input100"></span>
					</div>
					

					<div class="container-login100-form-btn">
						<div class="wrap-login100-form-btn">
							<div class="login100-form-bgbtn"></div>
							<button class="login100-form-btn" onClick="return validate()" >
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