<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
	
	
    <link rel="stylesheet" href="assets/css/custom.css"/>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <script src="assets/js/USR.js"></script>
    
    <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>
    
</head>
<body>
    <!--Navigation start-->
    <div class="">
      <nav class="navbar navbar-expand-lg navbar-dark bg-secondary ">
          <div class="container">
        <a class="navbar-brand english text-light" href="/JOC11CINEMA/">JOC11 CINEMA</a>
        <img src="assets/photo/ProjectLogo.jpg" class="logo"/>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
    
        <div class="collapse navbar-collapse" id="navbarSupportedContent" >
            <ul class="navbar-nav mr-auto"  style="margin-left: 80%;">
                <li class="nav-item active">
                    <a class="nav-link english text-light" href="/JOC11CINEMA/">Movies</a>
                </li>
               <li class="nav-item active">
                    <a class="nav-link english text-light" href="/JOC11CINEMA/loginAdmin"><i class="fa-solid fa-lock"></i></a>
                </li>
    
            </ul>
    
        </div>
        </div>
    </nav>
  </div>

   <!--Navigation end-->
<div class="aa">
   <div class="aa">
    <br>
    <div class="container">
  <div class="row justify-content-end">
    <div class="col-md-3">
    
    <form:form class="row g-1 ml-15" action="/JOC11CINEMA/search" method="POST" modelAttribute="movie">
			<h5 style="color:red;">${error }</h5>
            <div class="col-auto">
                <label for="moviename" class="visually-hidden">Movie Name</label>
                <form:input  cssClass="form-control"  path="movieName" placeholder="Movie Name"/>
            </div>
           
            <div class="col-auto">
                <button type="submit" class="btn btn-success mb-3" ><i class="fa fa-search"></i></button>
                
               </div>
              
              </form:form> 
       </div>
  </div>
</div>
   
  <div class="container english ">
  
  
   <%-- <c:forEach items="${seats }" var="seats">
  
   <h5>${seats.movieId }</h5>
   <h5>${seats.seatName }</h5>

 
   </c:forEach> --%>
   
    
    
   
  
    <c:if test="${movieList!=null }">
    <h1 class="text-light ">Now Showing</h1>
    <div class="bg-dark"><hr/></div>
    <div class="row">
   
     <c:forEach items="${movieList }" var="movieList" >
      <div class="col-md-4">
        <div class="card  bg-secondary mt-3">
          <img class="card-img-top photo" src="assets/uploadImage/${movieList.movieImage }" alt="..." >
          <div class="card-body textbody">
          
            <h5 class="card-title english text-light"><b><i><u>${movieList.movieName }</u></i></b></h5>
            <p class="card-text english text-light"><i>${movieList.movieType }</i></p>
            <p class="card-text english text-light"><i>${movieList.showDate }</i></p>
            <p class="card-text english text-light"><i>${movieList.showTime }</i></p>
            <a href="/JOC11CINEMA/buyTicket/${movieList.movieId }" class="btn btn-success english">Buy Ticket</a>
          </div>
        </div>
      </div>
      </br></br></br>
    </c:forEach>
    
    </div>
   
    </c:if>
    
     <c:if test="${movieListAll!=null }">
    <h1 class="text-light ">Showing</h1>
    <div class="bg-dark"><hr/></div>
    <div class="row">
     <c:forEach items="${movieListAll }" var="movieListAll" >
      <div class="col-md-4">
        <div class="card  bg-secondary mt-3">
          <img class="card-img-top photo" src="assets/uploadImage/${movieListAll.movieImage }" alt="..." >
          <div class="card-body textbody">
          
            <h5 class="card-title english text-light"><b><i><u>${movieListAll.movieName }</u></i></b></h5>
            <p class="card-text english text-light"><i>${movieListAll.movieType }</i></p>
            <p class="card-text english text-light"><i>${movieListAll.showDate }</i></p>
            <p class="card-text english text-light"><i>${movieListAll.showTime }</i></p>
            <a href="/JOC11CINEMA/buyTicket/${movieListAll.movieId }" class="btn btn-success english">Buy Ticket</a>
          </div>
        </div>
      </div>
      </br></br></br>
    </c:forEach>
    </c:if>
  </div>
    
    
   
<nav class="navbar navbar-light">
<a class="navbar-brand" href="#">
 
</a>
</nav>
<div class="mb-5 aa">
  
</div>
</div>
<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp;<i>YOEYOE SHINSHIN </i> &nbsp;<i class="fas fa-heart"></i> </p>
</div>

   <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
   <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>    
</body>
   </html>  