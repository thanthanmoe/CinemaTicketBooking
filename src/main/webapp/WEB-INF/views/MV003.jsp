<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
 <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="../assets/css/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css" />
<link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="../assets/css/index-styles.css" rel="stylesheet" />
 <link rel="stylesheet" href="../assets/css/font.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="../assets/css/custom.css"/>
</head>
<body id="page-top">
    
<!-- Navigation-->
    <div class="aa">
   
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary  text-uppercase fixed-top">
			<div ></div>
			<div class="container">
          <a class="navbar-brand english text-light">CINEMA-Admin</a>
          <img src="../assets/photo/download.jfif" class="logo"/>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
      
          <div class="collapse navbar-collapse" id="navbarSupportedContent" >
            <ul class="navbar-nav mr-auto"  style="margin-left: 80%;">
                <li class="nav-item active">
                    <a class="nav-link english text-light" href="/JOC11CINEMA/admin">Home<span class="sr-only">(current)</span></a>
                </li>
               <li class="nav-item active">
                    <a class="nav-link english text-light" href="/JOC11CINEMA/">Logout<span class="sr-only">(current)</span></a>
                </li>
    
            </ul>
		</div>
          </div>
      </nav>
       </div>
	<div class="container" style="background: #CCCCFF  ;">
	<!-- Portfolio Section Heading-->
			
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0"></h2>
				<div class="main_contents">
    <div id="sub_content">
        <form:form action="/JOC11CINEMA/movieUpdate" modelAttribute="movie" method="POST" enctype="multipart/form-data">
			<br><br>
			<h5 style="color:red;">${error }</h5>
            <h2 class="col-md-6 offset-md-2 mb-5 mt-4" text-align="center"  >Movie Details</h2>
       		 <h5 class="col-md-6 offset-md-2 mb-3 mt-4" text-align="center" style="color:red;" >${error }</h5>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="movieId" class="col-md-2 col-form-label"> Movie Id</label>
         
                <div class="col-md-4">
                    <form:input  cssClass="form-control" id="movieId"  path="movieId" readonly="true" disabled="disabled"/>
                    <form:errors path="movieId" cssClass="error" cssStyle="color:red;"></form:errors>
                    <span id="movieIdError" style="color: red;"></span><br>
                </div>
            </div>
            
				
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="name" class="col-md-2 col-form-label">Movie Name</label>
                <div class="col-md-4">
                    <form:input cssClass="form-control" id="movieName"  path="movieName"/>
                     <form:errors path="movieName" cssClass="error" cssStyle="color:red;"></form:errors>
                     <span id="movieNameError" style="color: red;"></span><br>
                </div>
            </div>
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="type" class="col-md-2 col-form-label">Movie Type</label>
                <div class="col-md-4">
                    <form:input cssClass="form-control" id="movieType"  path="movieType"/>
                     <form:errors path="movieType" cssClass="error" cssStyle="color:red;"></form:errors>
                     <span id="movieTypeError" style="color: red;"></span><br>
                </div>
            </div>
          
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="time" class="col-md-2 col-form-label">Show Time</label>
                <div class="col-md-4">
                   <form:select cssClass="form-select" aria-label="Type" path="showTime">
                        <form:option value="8:00-11:00AM">8:00-11:00AM</form:option>
                        <form:option value="1:00-4:00PM">1:00-4:00PM</form:option>
                        <form:option value="6:00-9:00PM">6:00-9:00PM</form:option>
    
                    </form:select>
                     <form:errors path="showTime" cssClass="error" cssStyle="color:red;"></form:errors>
                </div>
            </div>

            <div class="row mb-4">
                <div class="col-md-2"></div>
                
                  
                <label for="date" class="col-md-2 col-form-label">Show Date</label>
                <div class="col-md-4">
                    <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>

                   <script type="text/javascript">
                       $(document).ready(function() {
                    	   var today = new Date();
                    	    today.setDate(today.getDate() + 1);

                    	    var tomorrow = today.toISOString().split('T')[0];

                    	    $("#minDate").attr('min', tomorrow);
              			}); 
                  
                    </script>
                    <form:input type="date" id="minDate" cssClass="form-control" path="showDate"/>
                     <form:errors path="showDate" cssClass="error" cssStyle="color:red;"></form:errors>
                </div>
            </div>
             <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="type" class="col-md-2 col-form-label">Sub Title</label>
                <div class="col-md-4">
                    <form:select cssClass="form-select" aria-label="Type" path="subTitle">
                        <form:option value="Myanmar">Myanmar</form:option>
                        <form:option value="English">English</form:option>
                        <form:option value="Japan">Japan</form:option>
    
                    </form:select>
                     <form:errors path="subTitle" cssClass="error" cssStyle="color:red;"></form:errors>
                </div>
            </div>
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <label for="story" class="col-md-2 col-form-label">Short Story</label>
                <div class="col-md-4">
                    <form:textarea path="shortStory" id="shortStory" cssClass="form-control" />
                     <form:errors path="shortStory" cssClass="error" cssStyle="color:red;"></form:errors>
                <span id="shortStoryError" style="color: red;"></span><br>
                </div>
            </div>
    
            <div class="row mb-4">
                <div class="col-md-2"></div>
                <form:label path="file" cssClass="col-md-2 col-form-label"> Movie Photo</form:label>
                <div class="col-md-4">
                    <form:input type="file" class="form-control" id="image" path="file"  accept="image/png, image/jpg"/>
                    
                     <h6 style="color: red;">${image_error }</h6>
                     <span id="imageError" style="color: red;"></span><br>
                </div>
                
            </div>
    
         <div class="row mb-4">
                <div class="col-md-4"></div>
    
                <div class="col-md-4">
                   
                        <input type="submit" class="btn btn-secondary" style="color: #33F0FF;" value="Update" onclick=" return validateForm()"/>
                           
                            
                        
                    
                      <a href="/JOC11CINEMA/movieDelete/${movie.movieId}">
                        <button type="button" class="btn btn-danger">
                          
                            <span style="color: #33F0FF;">Delete</span>
                        </button>
                     </a>
    			</div>
                                   
                 </div><br><br>
    
            </form:form>
    </div>
</div>
</div>
<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp;<i>YOEYOE SHINSHIN </i> &nbsp;<i class="fas fa-heart"></i> </p>
<script>
        function validateForm() {
          var movieId = document.getElementById("movieId").value;
          var movieName = document.getElementById("movieName").value;
          var movieType = document.getElementById("movieType").value;
          var shortStory = document.getElementById("shortStory").value;
          var image = document.getElementById("image").value;
          
          var movieIdError = document.getElementById("movieIdError");
          var movieNameError = document.getElementById("movieNameError");
          var movieTypeError = document.getElementById("movieTypeError");
          var shortStoryError = document.getElementById("shortStoryError");
          var imageError = document.getElementById("imageError");
          var isValid = true;
        
          
          
          if (movieId == "") {
        	  movieIdError.innerHTML = "Movie Id is null !!!";
            isValid = false;
          } else {
        	  movieIdError.innerHTML = "";
          }
          
          if(movieName == ""){
        	  movieNameError.innerHTML = "Movie Name is null !!!";
        	  isValid = false;
          } else{
        	  movieNameError.innerHTML="";
          }
          if(movieType == ""){
        	  movieTypeError.innerHTML = "Movie type is null !!!";
        	  isValid = false;
          } else{
        	  movieTypeError.innerHTML="";
          }
        
          if (shortStory == "") {
        	  shortStoryError.innerHTML = "Short Story is null !!!";
            isValid = false;
          } else {
        	  shortStoryError.innerHTML = "";
          }
          if (image == "") {
        	  imageError.innerHTML = "Image is null !!!";
            isValid = false;
          } else {
        	  imageError.innerHTML = "";
          }
        
          return isValid;
        }
        
        function isValidEmail(email) {
          // Use a regular expression to check if the email is valid
          var emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
          return emailRegex.test(email);
        }
        </script>
<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="assets/js/scripts.js"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
