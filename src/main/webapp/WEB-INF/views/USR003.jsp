   <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	
	<div class="container"  >
        <br><br>
        <br><br>
			<!-- Portfolio Section Heading-->
            <h2
				class="page-section-heading text-center text-uppercase text-secondary mb-0">User Information</h2>
                <!-- Icon Divider-->
			<div class="divider-custom">
				<div class="divider-custom-line"></div>
				<div class="divider-custom-icon">
					<i class="fas fa-star"></i>
				</div>
				<div class="divider-custom-line"></div>
			</div>
			
		<div class="main_contents">
    <div id="sub_content">
    
			
    <form:form cssClass="row g-3 mt-3 ms-2" action="/JOC11CINEMA/userSearch" method="GET" modelAttribute="user">
            <h4 style="color: red;">${error }</h4>
            <div class="col-auto" >
                
                <form:input path="userName" cssClass="form-control" placeholder="User Name"/>
            </div>
            
            <div class="col-auto">
                <button type="submit" class="btn btn-success mb-3"  >
                Search
                </button>
              </div>
            </form:form>
   			<br>
 		<table class="table table-success table-striped" >
            <thead>
                <tr>
                    <th scope="col">#</th>
                    <th scope="col">User Name</th>
                    <th scope="col">Email</th>
                      <th scope="col">PhNo</th>
                    <th scope="col">MovieId</th>
                    
                      <th scope="col">numberOfSeats</th>
                      <th scope="col">Seats</th>
                     <th scope="col">TotalPrice</th>
                    <!-- <th scope="col">Details</th> -->
                    
                </tr>
            </thead>
           
              
            <tbody>
            <c:forEach items="${list }" var="list" varStatus="status">
                <tr>
    				<td>${status.index+1}</td>
                    <td>${list.userName}</td>
                    <td>${list.email} </td>
                    <td>${list.phoneNo}</td>
                    <td>${list.movieId} </td>
                  
                    <td>${list.numberOfSeats} </td>
                    <td>${list.seats}</td>
                    <td>${list.totalPrice}</td>
               <%--  <td>
                	  <button type="button" class="btn btn-success  " onclick="location.href ='/JOC11CINEMA/detail/${list.id}';">
                        See More
                    </button>
                </td> --%>
                
                </tr>
    		  </c:forEach>
    
            
            </tbody>
             
        </table>
          
        <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">User Deletion</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        
                         <h5 style="color: rgb(127, 209, 131);">Are you sure want to delete !</h5>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-success col-md-2" data-bs-dismiss="modal">Ok</button>
    
                    </div>
                </div>
            </div>
        </div>
      </div>
      </div>
      </div>
      <br><br><br>
      <br>
        
<nav class="navbar navbar-light">
<a class="navbar-brand" href="#">
 
</a>
</nav>
<div class="mb-5 aa">
  
</div>
<div class="mb-5 aa">
  
</div>
<nav class="navbar navbar-light">
<a class="navbar-brand" href="#">
 
</a>
</nav>
<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp;<i>YOEYOE SHINSHIN </i> &nbsp;<i class="fas fa-heart"></i> </p>
</div>
</body>
</html>