<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>

<!-- Font Icon -->
<link rel="stylesheet"
	href="fonts/material-icon/css/material-design-iconic-font.min.css">

<!-- Main css -->
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

	<div class="main">

		<!-- Sign up form -->
		<section class="signup">
			<div class="container">
				<div class="signup-content">
					<div class="signup-form">
						<h2 class="form-title">Forget Password</h2>
					<h3 style="color: red;">${error }</h3>
						<form:form action="/JOC11CINEMA/forgetpass"  modelAttribute="admin"  method="POST"  class="register-form"
							id="register-form">
							<div class="form-group">
								<form:label path="name"/><i class="zmdi zmdi-account material-icons-name"></i>
								<form:input path="name" id="name" placeholder="Your Name"/>
								<span id="nameError" style="color: red;"></span><br>
							</div>
							<div class="form-group">
								<form:label path="email"/><i class="zmdi zmdi-email"></i>
								<form:input path="email" id="email" placeholder="Your Email"/>
								 <span id="emailError" style="color: red;"></span><br>
							</div>
							
							
							
							
							<div class="form-group form-button">
								<input type="submit" name="signup" id="signup"
									class="form-submit" value="Next" onclick=" return validateForm()"/>
							</div>
						</form:form>
					</div>
					<div class="signup-image">
						<figure>
							<img src="assets/photo/signup-image.jpg" alt="sing up image">
						</figure>
						
					</div>
				</div>
			</div>
		</section>


	</div>
	<!-- JS -->
	<script src="vendor/jquery/jquery.min.js"></script>
	<script src="assets/js/main.js"></script>
<script>
		function validateForm() {
			var name = document.getElementById("name").value;
			
			var email = document.getElementById("email").value;
			var nameError = document.getElementById("nameError");
		
			var emailError = document.getElementById("emailError");
			var isValid = true;

			if (name == "") {
				nameError.innerHTML = "Your Name must not be null !!!";
				isValid = false;
			} else {
				nameError.innerHTML = "";
			}
			function isValidEmail(email) {
		          // Use a regular expression to check if the email is valid
		          var emailRegex = /\b[A-Za-z0-9._%+-]+@gmail\.com\b/;
		          return emailRegex.test(email);
		        }
			if (email == "") {
				emailError.innerHTML = "Email must not be null !!!";
				isValid = false;
			}  else if (!isValidEmail(email)) {
	            emailError.innerHTML = "Email is invalid !!!";
	            isValid = false;
	          } else {
	            emailError.innerHTML = "";
	          }

			return isValid;
		}

		
	</script>


</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>