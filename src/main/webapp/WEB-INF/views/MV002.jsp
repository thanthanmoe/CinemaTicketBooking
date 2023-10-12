<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
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
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v5.15.4/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />

<!-- Core theme CSS (includes Bootstrap)-->
<link href="assets/css/index-styles.css" rel="stylesheet" />
 <link rel="stylesheet" href="assets/css/font.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <link rel="stylesheet" href="assets/css/custom.css"/>
</head>
<body id="page-top">
	<!-- Navigation-->
    <div class="aa">
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary  text-uppercase fixed-top">
			<div ></div>
			<div class="container">
          <a class="navbar-brand english text-light">CINEMA-Admin</a>
          <img src="assets/photo/ProjectLogo.jpg" class="logo"/>
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
    <!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
	
		<div class="container">
			<!-- Portfolio Section Heading-->
			
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Movie View</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
			<form:form class="row g-3 mt-3 ms-2" action="/JOC11CINEMA/movieSearch" method="GET" modelAttribute="movie">
			
			<div class="col-auto">
                <label for="moviename" class="visually-hidden">Movie Id</label>
                <form:input  cssClass="form-control"  path="movieId" placeholder="Movie Id"/>
            </div>
            <div class="col-auto">
                <label for="moviename" class="visually-hidden">Movie Name</label>
                <form:input  cssClass="form-control"  path="movieName" placeholder="Movie Name"/>
            </div>
           <div class="col-auto">
                <label for="date" class="visually-hidden">Show Date</label>
                <form:input type="date" cssClass="" class="form-control"  path="showDate" placeholder="Show Date"/>
            </div> 
    
            <div class="col-auto">
                <input type="submit" class="btn btn-success mb-3"  value="search">
                
               
              </div>
              <h4 style="color:red">${error }</h4>
              </form:form> 
              <br>
             
			 
			<!-- Portfolio Grid Items-->
		<div class="row justify-content-center">
			
				<!-- Portfolio Item 1-->
		
			<c:forEach items="${movieList }" var="movieList" >
			
			
				<div class="col-md-6 col-lg-4 mb-5">
				
				
				<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<a href="/JOC11CINEMA/movieEdit/${movieList.movieId }">
						<div class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<p><h5 >Movie Name:${movieList.movieName }</h5>
									<h5 >Show Time:${movieList.showTime }</h5>
									<h5>Show Date:${movieList.showDate }</h5></p>
							</div>
						</div>
						
						<img class="img-fluid photo" src="assets/uploadImage/${movieList.movieImage }"
							alt="..." />
						</a>
				</div>
				
				</div>
			
			
	
				
			</c:forEach>
				</div>
			
				
	</div>
	</section>
	
	<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp;<i>YOEYOE SHINSHIN </i> &nbsp;<i class="fas fa-heart"></i> </p>

    <script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="assets/js/scripts.js"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
				

