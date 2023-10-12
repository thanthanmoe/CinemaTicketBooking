<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<body >

	<div class="main">

		<!-- Sing in  Form -->
		<section class="sign-in">
			<div class="container">
				<div class="signin-content">
					<div class="signin-image">
						<figure>
							<img src="assets/photo/signin-image.jpg" alt="sing up image">
						</figure>
						<a href="/JOC11CINEMA/forget" class="signup-image-link">Forget password</a>
					</div>

					<div class="signin-form">
						<h2 class="form-title">Login</h2>
						<h3 style="color: red;">${error }</h3>
						
						<form:form action="/JOC11CINEMA/adminLogin" modelAttribute="admin" method="POST"  cssClass="register-form"
							>
							<div class="form-group">
								<form:label path="name"><i
									class="zmdi zmdi-account material-icons-name"></i></form:label>
									<form:input type="text" id="name" path="name" placeholder="Your Name" />
								<span id="nameError" style="color: red;"></span><br>
									
							</div>
							<div class="form-group">
								<form:label path="pass"><i class="zmdi zmdi-lock"></i></form:label>
								<form:input type="password" id="password" path="pass" placeholder="Password" />
								 <span id="passwordError" style="color: red;"></span><br>
							</div>
						
							<div class="form-group form-button">
								<input type="submit" value="login" class="form-submit" onclick=" return validateForm()">
							</div>
							
						</form:form>
						
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
			
			var password = document.getElementById("password").value;
			var nameError = document.getElementById("nameError");
		
			var passwordError = document.getElementById("passwordError");
			var isValid = true;

			if (name == "") {
				nameError.innerHTML = "Your Name must not be null !!!";
				isValid = false;
			} else {
				nameError.innerHTML = "";
			}

			if (password == "") {
				passwordError.innerHTML = "Password must not be null !!!";
				isValid = false;
			} else {
				passwordError.innerHTML = "";
			}

			return isValid;
		}

		
	</script>
</body>
<!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>