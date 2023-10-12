<%@page import="java.util.List" %>
<%@ page language="java" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@page import="joc11.models.TicketModel"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="assets/css/USR.css"/>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <script src="assets/js/USR.js"></script>
     <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>
	<script src="jquery.js"></script>
	
</head>
<body>
    <!--Navigation start-->
    <div class="">
        <nav class="navbar navbar-expand-lg navbar-dark bg-secondary">
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
                      <a class="nav-link english text-light" href="#"><i class="fa-solid fa-lock"></i></span></a>
                  </li>
      
              </ul>
      
          </div>
          </div>
        </nav>
    </div>
     <!--Navigation end-->


 <div class="aa">    
    <div class="container py-5">
    
    <!-- For demo purpose -->
    <div class="container row mb-4">
    <h1 class="display-6 header text-success">SUCCESSFULLY BOOKING</h1>
        <div class="container pt-4 pl-2 pr-2 pb-2">
            <!-- Credit card form tabs -->
            
            <ul role="tablist" class="nav bg-secondary nav-pills rounded nav-fill mb-3">
                <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light">1.Select Seats <i class="fa-solid fa-chair fa-lg"></i></a> </li>
                <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light">2.Confirm <i class="fa-solid fa-user fa-lg"></i></a> </li>
                <li class="nav-item active "> <a data-toggle="pill"  class="nav-link text-light">3.Ticket   <i class="fa-solid fa-ticket fa-spin fa-lg"></i></a> </li>
            </ul>
    </div>
        
        <div class="col-lg-8 mx-auto text-center">
            <h1 class="display-6 header text-light"></h1>
        </div>
    
	

<!--For Page-->
<div class="bg">
<c:forEach items="${list }" var="list">

	<!--For Row containing all card-->
	<div class="row mainRow">
		<!--Card 1-->
		<div class="col-sm-8">
			<div class="card card-cascade wider shadow p-3 mb-5 bg-secondary">

				<!--Card image-->
				<div class="view view-cascade overlay text-center">
					<img class="card-img-top" src="assets/uploadImage/${list.movieImage }" alt="">
					<a>
						<div class="mask rgba-white-slight"></div>
					</a>
				</div>


				<!--Product Description-->
				<div class="desc">

					<!-- 1st Row for title-->
					<div class="row subRow">
					
						<!--Column for Data-->
						<div class="col">
							<p class="row1 text-light"><b><i>Movie Name</i></b></p>
							<p class="row2 text-light"><i>${list.movieName }</i></p>
						</div>

						<!--Column for Data-->
						<div class="col">
							<p class="row1 text-light"><b><i>Date</i></b></p>
							<p class="row2 text-light"><i>${list.showDate }</i></p>
						</div>

						<!--Column for Data-->
						<div class="col">
							<p class="row1 text-light"><b><i>Time</i></b></p>
							<p class="row2 text-light"><i>${list.showTime }</i></p>
						</div>
				
					</div>

			



					<!-- 2nd Row for title-->
					<div class="row subRow">

						<!--Column for Data-->
						<div class="col">
							<p class="row3 text-light"><h6 class="text-light">${list.shortStory }
                               </h6></p>
							
						</div>


					</div>

				</div>
			</div>
		</div>



		<!--Card 2-->
		<div class="col-sm-4 ">
			<div class="card card-cascade bg-secondary card-ecommerce wider shadow p-3 mb-5 ">

				<!--Card Body-->
				<div class="card-body card-body-cascade">

					<!--Card Description-->
					<div class="card2decs ">

						<p class="heading1 text-light">Ticket</p>
						<p class="quantity d-flex flex-row justify-content-between text-align-center xyz text-light">Date<span class="float-right text1 text-light">
						<%
						  Date currentDate = new Date();
						  SimpleDateFormat formatter = new SimpleDateFormat("dd/MM/yyyy");
						  String formattedDate = formatter.format(currentDate);
						  out.println(formattedDate);
						%></span></p>
						<p class="quantity d-flex flex-row justify-content-between text-align-center xyz text-light">Ticket Id<span class="float-right text1 text-light">${list.id }</span></p>
						<p class="subtotal d-flex flex-row justify-content-between text-align-center xyz text-light">User Name<span class="float-right text1 text-light">${list.userName }</span></p>
						<p class="shipping d-flex flex-row justify-content-between text-align-center xyz text-light">Movie Id<span class="float-right text1 text-light">${list.movieId }</span></p>
						<p class="shipping d-flex flex-row justify-content-between text-align-center xyz text-light">Movie Name<span class="float-right text1 text-light">${list.movieName }</span></p>
						<p class="shipping d-flex flex-row justify-content-between text-align-center xyz text-light">Show Time<span class="float-right text1 text-light">${list.showTime }</span></p>
						<p class="shipping d-flex flex-row justify-content-between text-align-center xyz text-light">Show Date<span class="float-right text1 text-light">${list.showDate }</span></p>
						<p class="promocode d-flex flex-row justify-content-between text-align-center xyz text-light">Number of Seats<span class="float-right text1 text-light">${list.numberOfSeats }</span></p>
                      <p class="promocode d-flex flex-row justify-content-between text-align-center xyz text-light">Seats<span class="float-right text1 text-light">${list.seats }</span></p>
						<div class="bg-light"><hr/></div>
						<p class="total d-flex flex-row justify-content-between text-align-center xyz text-light">Total Price<span class="float-right text1 text-light">ks <span class="text1 text-light">${list.totalPrice }</span></span></p>
						
						

								<a href="/JOC11CINEMA/" class="btn btn-success english" style="margin-left: 230px;margin-top: 10px;">OK</a>
						
					</div>
                    
					<div class="payment bg-secondary">

						<p class="heading2 text-light"><strong>Payment Details</strong></p>
                        <div class="card-details text-light">  
                            <span>Card Number</span> <i class="fa fa-credit-card"></i> 
                            <input type="text" placeholder="0000 0000 0000 0000" data-slots="0" data-accept="\d" size="19">
                        </div><br>
                        
                        <div class="card-details mt-25 text-light"> 
                            <span>Card Holder Name</span>  
                            <input type="text" placeholder="Enter cardholder's full name">
                        </div>
                        
                    </div>

					</div>

					<!--Card footer-->
					<a href="" class="purchaseLink">
						<div class="card-footer text-center bg-success text-light">
							PURCHASE &#8594;
						</div>
					</a>

				</div>
			</div>
		</div>
</c:forEach>

	</div>
</div>
                    
                        
       
                    </div>
					<p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp; <i>YOEYOE SHINSHIN </i> &nbsp;  <i class="fas fa-heart"></i> </p>
                </div>
     
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>