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
<link rel="stylesheet" href="assets/css/custom.css"/>
<link href="assets/css/index-styles.css" rel="stylesheet" />
 <link rel="stylesheet" href="assets/css/font.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    
</head>
<body id="page-top">
	<!-- Navigation-->
    <div class="aa">
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary text-uppercase fixed-top">
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
	
	<!-- Masthead-->
	<header class="masthead text-white bg-primary text-center">
		<div class="container d-flex align-items-center flex-column" >
			<!-- Masthead Avatar Image-->
			<img class="masthead-avatar mb-1"  src="assets/photo/avataaars.svg"
				alt="..." />
			
			<!-- Masthead Heading-->
			<h1 class="masthead-heading text-uppercase mb-0">Welcome To Cinema Admin</h1>
			<!-- Icon Divider-->
			<div class="divider-custom divider-light">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<h2
				class=" text-center text-uppercase text-secondary mb-0">Hello,Have a good sale.</h2>
                
			
			
		</div>
	</header>
	<!-- Portfolio Section-->
	<section class="page-section portfolio" id="portfolio">
		<div class="container">
			
			<!-- Portfolio Section Heading-->
			<h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">Home Page</h2>
			<!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			<!-- Portfolio Grid Items-->
			<div class="row justify-content-center">
				<!-- Portfolio Item 1-->
				<div class="col-md-6 col-lg-4 mb-5" onclick="location.href='/JOC11CINEMA/viewuser'">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal1" >
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<p>Customer List</p>
							</div>
						</div>
						<img class="img-fluid" src="assets/photo/cabin.png"
						alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 2-->
				<div class="col-md-6 col-lg-4 mb-5"  onclick="location.href='/JOC11CINEMA/movieAdd'">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal2">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<i class="fas fa-plus fa-3x"></i><p>Movie Add</p>
							</div>
						</div>
						<img class="img-fluid" src="assets/photo/cake.png"
							alt="..." />
					</div>
				</div>
				<!-- Portfolio Item 3-->
				<div class="col-md-6 col-lg-4 mb-5" onclick="location.href='/JOC11CINEMA/admin_movieView'">
					<div class="portfolio-item mx-auto" data-bs-toggle="modal"
						data-bs-target="#portfolioModal3">
						<div
							class="portfolio-item-caption d-flex align-items-center justify-content-center h-100 w-100">
							<div
								class="portfolio-item-caption-content text-center text-white">
								<p>Movie Edit</p>
							</div>
						</div>
						<img class="img-fluid" src="assets/photo/cricus.png"
							alt="..." />
					</div>
				</div>
			
			</div>
		</div>
	</section>
	<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp; <i>YOEYOE SHINSHIN </i> &nbsp;  <i class="fas fa-heart"></i> </p>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="assets/js/scripts.js"></script>
	
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
