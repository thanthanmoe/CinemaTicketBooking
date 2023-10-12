<%@page import="java.util.List"%>
<%@page import="joc11.models.SeatModel"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" href="../assets/css/seat.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <meta charset="UTF-8">
   <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>
    <link rel="stylesheet" href="../assets/css/font.css"/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href=""/>
</head>
<body>
   <!--Navigation start-->
   <div class="">
    <nav class="navbar navbar-expand-lg bg-secondary navbar-dark ">
        <div class="container">
      <a class="navbar-brand english text-light " href="/JOC11CINEMA/">JOC11 CINEMA</a>
      <img src="../assets/photo/ProjectLogo.jpg" class="logo"/>
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
<br>
 <!--Navigation end-->

<div class="container py-5">
    <div class="container row mb-4">
     <ul role="tablist" class="nav nav-pills bg-secondary rounded nav-fill ">
         <li class="nav-item  active"> <a data-toggle="pill"  class="nav-link text-light"> 1.Select Seats <i class="fa-solid fa-chair fa-beat fa-lg"></i></a> </li>
         <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light ">2.Confirm <i class="fa-solid fa-user fa-lg"></i></a> </li>
         <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light"> 3.Ticket  <i class="fa-solid fa-ticket fa-lg"></i></a> </li>
     </ul>
   </div>
   <div class="col-lg-8 mx-auto text-center">
    <h1>SELECT YOUR SEAT</h1>
    
    <h5>${movieId }</h5>
    
    
   
 
   
   </div>
   
<!--Showcase Started-->
   <div class="bb">
   
   <ul class="showcase">
    <li>
      <div class="seat"></div>
      <small>Standard(500ks)</small>
    </li>
    <li>
      <div class="seat vip"></div>
      <small>Vip(1000ks)</small>
    </li>
    <li>
      <div class="seat couple"></div>
      <small>Couple(1500ks)</small>
    </li>
    <li>
      <div class="seat selected"></div>
      <small>Selected</small>
    </li>
    <li>
      <div class="seat sold"></div>
      <small>Sold</small>
    </li>
  </ul>
  </div>
  <div class="row">
    <div class="col-lg-6 mx-auto">
<div class="card" style="width: 35rem;">
<div class="cardbody">
<!--Showcase Ended-->
  <div class="container1">
    <div class="screen bg-dark text-light text-center">Screen</div>
  </div>
   <%SeatModel seat=(SeatModel)session.getAttribute("seat"); %>
  
  <form:form action="/JOC11CINEMA/select" modelAttribute="seat" method="POST">
    <form:hidden path="movieId" value="${movieId }"/>
      <!--Standard Start-->
      <div class="seat-layout">
      
   
        <div class="seat-row">
       
           <div class="seat  <c:forEach items="${seats }" var="seats"><c:if test="${seats.s01 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S01">
            <div class="seat-label ">S01
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s01 or seats.getS01() =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s01" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s01 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s02 or seats.getS02() =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S02">
            <div class="seat-label">S02<input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s02 =='true' }">checked</c:if></c:forEach>  type="checkbox" name="s02" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s02 =='true' }">disabled</c:if></c:forEach>/></div>
          </div>
          
         
    	<div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s03 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S03">
            <div class="seat-label ">S03
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s03 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s03" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s03 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s04=='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S04">
            <div class="seat-label">S04<input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s04 =='true' }">checked</c:if></c:forEach>  type="checkbox" name="s04" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s04 =='true' }">disabled</c:if></c:forEach>/></div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s05 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S05">
            <div class="seat-label ">S05
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s05 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s05" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s05 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s06 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S06">
            <div class="seat-label">S06<input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s06 =='true' }">checked</c:if></c:forEach>  type="checkbox" name="s06" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s06 =='true' }">disabled</c:if></c:forEach>/></div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s07 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S07">
            <div class="seat-label ">S07
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s07 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s07" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s07 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s08 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S08">
            <div class="seat-label">S08<input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s08 =='true' }">checked</c:if></c:forEach>  type="checkbox" name="s08" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s08 =='true' }">disabled</c:if></c:forEach>/></div>
          </div>
          
          <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s09 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S09">
            <div class="seat-label ">S09
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s09 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s09" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s09 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div> 
          
        </div>

       <!-- Second  -->
        <div class="seat-row">
          
         <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s10 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S10">
            <div class="seat-label ">S10
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s10 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s10" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s10 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s11 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S11">
            <div class="seat-label ">S11
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s11 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s11" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s11 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s12 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S12">
            <div class="seat-label ">S12
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s12 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s12" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s12 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s13 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S13">
            <div class="seat-label ">S13
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s13 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s13" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s13=='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s14 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S14">
            <div class="seat-label ">S14
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s14 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s14" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s14 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s15 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S15">
            <div class="seat-label ">S15
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s15 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s15" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s15 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s16 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S16">
            <div class="seat-label ">S16
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s16 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s16" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s16 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s17 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S17">
            <div class="seat-label ">S17
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s17 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s17" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s17 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s18 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S18">
            <div class="seat-label ">S18
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s18 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s18" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s18 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
        </div>
        <!-- Third  -->
         <div class="seat-row">
          
         <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s19 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S19">
            <div class="seat-label ">S19
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s19 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s19" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s19 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s20 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S20">
            <div class="seat-label ">S20
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s20 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s20" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s20 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s21 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S21">
            <div class="seat-label ">S21
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s21 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s21" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s21 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s22 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S22">
            <div class="seat-label ">S22
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s22 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s22" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s22=='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s23 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S23">
            <div class="seat-label ">S23
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s23 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s23" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s23 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s24 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S24">
            <div class="seat-label ">S24
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s24 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s24" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s24 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s25 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S25">
            <div class="seat-label ">S25
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s25 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s25" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s25 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s26 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S26">
            <div class="seat-label ">S26
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s26 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s26" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s26 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat <c:forEach items="${seats }" var="seats"><c:if test="${seats.s27 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="S27">
            <div class="seat-label ">S27
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.s27 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="s27" <c:forEach items="${seats }" var="seats"><c:if test="${seats.s27 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          </div>
        	  <!-- Standard end  --> 
        	  
        	<!--/////////////////////////////////////////////////////////////////////////////////////////-->  
        	  
        <!-- VIP start  --> 
          <div class="seat-row">
          <!-- First  -->
         <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v01 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V01">
            <div class="seat-label ">V01
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v01 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v01" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v01 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v02 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V02">
            <div class="seat-label ">V02
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v02 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v02" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v02 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v03 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V03">
            <div class="seat-label ">V03
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v03 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v03" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v03 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v04 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V04">
            <div class="seat-label ">V04
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v04 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v04" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v04 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v05 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V05">
            <div class="seat-label ">V05
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v05 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v05" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v05 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v06 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V06">
            <div class="seat-label ">V06
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v06 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v06" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v06 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v07 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V07">
            <div class="seat-label ">V07
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v07 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v07" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v07 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v08 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V08">
            <div class="seat-label ">V08
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v08 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v08" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v08 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v09 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V09">
            <div class="seat-label ">V09
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v09 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v09" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v09 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
       </div>
       
        <div class="seat-row">
          <!-- Second  -->
         <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v10 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V10">
            <div class="seat-label ">V10
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v10 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v10" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v10 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v11 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V11">
            <div class="seat-label ">V11
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v11 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v11" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v11 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v12 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V12">
            <div class="seat-label ">V12
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v12 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v12" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v12 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v13 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V13">
            <div class="seat-label ">V13
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v13 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v13" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v13 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v14 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V14">
            <div class="seat-label ">V14
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v14 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v14" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v14 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v15 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V15">
            <div class="seat-label ">V15
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v15 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v15" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v15 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v16 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V16">
            <div class="seat-label ">V16
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v16 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v16" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v16 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v17 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V17">
            <div class="seat-label ">V17
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v17 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v17" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v17 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat vip <c:forEach items="${seats }" var="seats"><c:if test="${seats.v18 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="V18">
            <div class="seat-label ">V18
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.v18 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="v18" <c:forEach items="${seats }" var="seats"><c:if test="${seats.v18 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          </div>
       <!-- VIP end  -->
       
      	
        
         <!-- Couple start  --> 
          <!-- First  -->
          <div class="seat-row">
         
         <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c01 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C01">
            <div class="seat-label ">C01
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c01 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c01" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c01 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c02 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C02">
            <div class="seat-label ">C02
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c02 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c02" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c02 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c03 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C03">
            <div class="seat-label ">C03
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c03 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c03" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c03 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c04 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C04">
            <div class="seat-label ">C04
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c04 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c04" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c04 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c05 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C05">
            <div class="seat-label ">C05
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c05 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c05" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c05 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c06 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C06">
            <div class="seat-label ">C06
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c06 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c06" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c06 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
         </div>
         
          <!-- Second  -->
           <div class="seat-row">
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c07 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C07">
            <div class="seat-label ">C07
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c07 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c07" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c07 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c08 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C08">
            <div class="seat-label ">C08
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c08 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c08" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c08 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c09 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C09">
            <div class="seat-label ">C09
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c09 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c09" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c09 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
         <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c10 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C10">
            <div class="seat-label ">C10
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c10 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c10" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c10 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c11 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C11">
            <div class="seat-label ">C11
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c11 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c11" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c11 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
          
           <div class="seat couple <c:forEach items="${seats }" var="seats"><c:if test="${seats.c12 =='true' }">sold</c:if></c:forEach>" data-price="500" data-seatid="C12">
            <div class="seat-label ">C12
            <input <c:forEach items="${seats }" var="seats"><c:if test="${seats.c12 =='true' }">checked</c:if></c:forEach> 
            type="checkbox"  name="c12" <c:forEach items="${seats }" var="seats"><c:if test="${seats.c12 =='true' }">disabled</c:if></c:forEach>/> </div>
          </div>
    </div> 
       <!-- Couple end  -->
      <br>
      <br>
      <div class="button-container">
        <button type="reset" class="btn btn-danger" id="cancel-button" onclick="window.location.href='javascript:history.go(0)'">Cancel</button>
        <button type="submit" class="btn btn-primary" id="next-button" onclick="window.location.href=''">Next</button>
      </div>
     
      <br>
    </div>
    </form:form>
    </div>
    </div>
  
     <!--Couple end-->
    </div>
    <style>
      button {
          margin-right: 10px; /* add 10 pixels of space to the right of each button */
      }
  </style>
      <script src="../assets/js/script.js"></script>  
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" ></script>
      <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"></script>    
</body>
</html>