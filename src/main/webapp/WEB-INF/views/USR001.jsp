<%@page import="joc11.models.SeatModel"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
   <title>JOC11 CINEMA</title>
	<link rel="icon" href="assets/photo/ProjectLogo.jpg"/>
    <!-- CSS only -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- JavaScript Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.3.0/css/all.min.css">
    <script src="assets/js/USR.js"></script>
    <link rel="stylesheet" href="assets/css/USR.css"/>
<style>
      .myslideimage {
	max-height: 350px;
	min-height: 350px;
	height: 50px;
}

    </style>
</head>
<body>
    <!--Navigation start-->
    <div class="">
        <nav class="navbar navbar-expand-lg bg-secondary navbar-dark ">
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
    <div class="container row mb-4">
                <div class="container pt-4 pl-2 pr-2 pb-2">
                    <ul role="tablist" class="nav bg-secondary nav-pills rounded nav-fill mb-3">
                        <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light bg-secondary"> 1.Select Seats <i class="fa-solid fa-chair"></i></a> </li>
                        <li class="nav-item active "> <a data-toggle="pill"  class="nav-link text-light ">2.Confirm <i class="fa-solid fa-user fa-beat fa-lg"></i></a> </li>
                        <li class="nav-item"> <a data-toggle="pill"  class="nav-link text-light"> 3.Ticket  <i class="fa-solid fa-ticket fa-lg"></i></a> </li>
                    </ul>
                </div>

             </div> 
       <div class="container py-5 ">
          <div class="img">
                   <img class="col-lg-3" style="width:380px;height:500px" src="assets/photo/ProjectLogo.jpg" />
                </div>     
             <div class=" list ">
                <div class="card ">
                 <div class="card-header bg-secondary">
                            
                   <div class="tab-content">
                      <h1 class="display-20 header text-light">USER DETAILS</h1>
                 
                        <% SeatModel seat=(SeatModel)session.getAttribute("seat");
                        	String movieId=seat.getMovieId();
                        	session.setAttribute("seat", seat);
                        	
                        	boolean s01=seat.getS01();
                        	int n1=s01?1:0;
                        	String S1=s01?"s01/":"";
                        	int p1=s01?500:0;
                        	
                        	boolean s02=seat.getS02();
                        	int n2=s02?1:0;
                        	String S2=s02?"s02/":"";
                        	int p2=s02?500:0;
                        	
                        	boolean s03=seat.getS03();
                        	int n3=s03?1:0;
                        	String S3=s03?"s03/":"";
                        	int p3=s03?500:0;
                        	
                        	boolean s04=seat.getS04();
                        	int n4=s04?1:0;
                        	String S4=s04?"s04/":"";
                        	int p4=s04?500:0;
                        	
                        	boolean s05=seat.getS05();
                        	int n5=s05?1:0;
                        	String S5=s05?"s05/":"";
                        	int p5=s05?500:0;
                        	
                        	boolean s06=seat.getS06();
                        	int n6=s06?1:0;
                        	String S6=s06?"s06/":"";
                        	int p6=s06?500:0;
                        	
                        	boolean s07=seat.getS07();
                        	int n7=s07?1:0;
                        	String S7=s07?"s07/":"";
                        	int p7=s07?500:0;
                        	
                        	boolean s08=seat.getS08();
                        	int n8=s08?1:0;
                        	String S8=s08?"s08/":"";
                        	int p8=s08?500:0;
                        	
                        	boolean s09=seat.getS09();
                        	int n9=s09?1:0;
                        	String S9=s09?"s09/":"";
                        	int p9=s09?500:0;
                        	
                        	boolean s10=seat.getS10();
                        	int n10=s10?1:0;
                        	String S10=s10?"s10/":"";
                        	int p10=s10?500:0;

                        	
                        	 boolean s11=seat.getS11();
                        		int n11=s11?1:0;
                        		String S11=s11?"s11/":"";                       	
                        		int p11=s11?500:0;
                        		
                        	         boolean s12=seat.getS12();
                        		int n12=s12?1:0;
                        		String S12=s12?"s12/":"";  
                        		int p12=s12?500:0;
                        		
                        	                        	
                        	 boolean s13=seat.getS13();
                        		int n13=s13?1:0;
                        		String S13=s13?"s13/":"";                       	
                        		int p13=s13?500:0;
                        		
                        	         boolean s14=seat.getS14();
                        		int n14=s14?1:0;
                        		String S14=s14?"s14/":"";   
                        		int p14=s14?500:0;
                        		
                        	 boolean s15=seat.getS15();
                        		int n15=s15?1:0;
                        		String S15=s15?"s15/":"";                       	
                        		int p15=s15?500:0;
                        		
                        	         boolean s16=seat.getS16();
                        		int n16=s16?1:0;
                        		String S16=s16?"s16/":"";  
                        		int p16=s16?500:0;
                        		
                        	                        	
                        	 boolean s17=seat.getS17();
                        		int n17=s17?1:0;
                        		String S17=s17?"s17/":"";                       	
                        		int p17=s17?500:0;
                        		
                        	         boolean s18=seat.getS18();
                        		int n18=s18?1:0;
                        		String S18=s18?"s18/":"";  
                        		int p18=s18?500:0;
                        		
                        	 boolean s19=seat.getS19();
                        		int n19=s19?1:0;
                        		String S19=s19?"s19/":"";                       	
                        		int p19=s19?500:0;
                        		
                        	         boolean s20=seat.getS20();
                        		int n20=s20?1:0;
                        		String S20=s20?"s20/":"";  
                        		int p20=s20?500:0;
                        		
                        	                        	
                        	 boolean s21=seat.getS21();
                        		int n21=s21?1:0;
                        		String S21=s21?"s21/":"";                       	
                        		int p21=s21?500:0;
                        		
                        	         boolean s22=seat.getS22();
                        		int n22=s22?1:0;
                        		String S22=s22?"s22/":"";   
                        		int p22=s22?500:0;
                        		
                        	 boolean s23=seat.getS23();
                        		int n23=s23?1:0;
                        		String S23=s23?"s23/":"";                       	
                        		int p23=s23?500:0;
                        		
                        	         boolean s24=seat.getS24();
                        		int n24=s24?1:0;
                        		String S24=s24?"s24/":"";  
                        		int p24=s24?500:0;
                        		
                        	                        	
                        	 boolean s25=seat.getS25();
                        		int n25=s25?1:0;
                        		String S25=s25?"s25/":"";                       	
                        		int p25=s25?500:0;
                        		
                        	         boolean s26=seat.getS26();
                        		int n26=s26?1:0;
                        		String S26=s26?"s26/":"";  
                        		int p26=s26?500:0;

                        	                        	
                        	 boolean s27=seat.getS27();
                        		int n27=s27?1:0;
                        		String S27=s27?"s27/":"";                       	
                        		int p27=s27?500:0;                   

                        	  boolean s28=seat.getV01();
                        		int n28=s28?1:0;
                        		String S28=s28?"v01/":"";  
                        		int p28=s28?1000:0;
                        	                        	
                        	 boolean s29=seat.getV02();
                        		int n29=s29?1:0;
                        		String S29=s29?"v02/":"";                       	
                        		int p29=s29?1000:0;
                        		
                        	   boolean s30=seat.getV03();
                        		int n30=s30?1:0;
                        		String S30=s30?"v03/":"";   
                        		int p30=s30?1000:0;
                        		
                        	 boolean s31=seat.getV04();
                        		int n31=s31?1:0;
                        		String S31=s31?"v04/":"";                       	
                        		int p31=s31?1000:0;
                        		
                        	     boolean s32=seat.getV05();
                        		int n32=s32?1:0;
                        		String S32=s32?"v05/":"";  
                        		int p32=s32?1000:0;
                        	                        	
                        	 boolean s33=seat.getV06();
                        		int n33=s33?1:0;
                        		String S33=s33?"v06/":"";                       	
                        		int p33=s33?1000:0;
                        		
                        	         boolean s34=seat.getV07();
                        		int n34=s34?1:0;
                        		String S34=s34?"v07/":"";  
                        		int p34=s34?1000:0;
                        		
                        	 boolean s35=seat.getV08();
                        		int n35=s35?1:0;
                        		String S35=s35?"v08/":"";                       	
                        		int p35=s35?1000:0;
                        		
                        	         boolean s36=seat.getV09();
                        		int n36=s36?1:0;
                        		String S36=s36?"v09/":"";  
                        		int p36=s36?1000:0;
                        		
                        	                        	
                        	 boolean s37=seat.getV10();
                        		int n37=s37?1:0;
                        		String S37=s37?"v10/":"";                       	
                        		int p37=s37?1000:0; 
                        		
                        	         boolean s38=seat.getV11();
                        		int n38=s38?1:0;
                        		String S38=s38?"v11/":"";   
                        		int p38=s38?1000:0;
                        		
                        	 boolean s39=seat.getV12();
                        		int n39=s39?1:0;
                        		String S39=s39?"v12/":"";                       	
                        		int p39=s39?1000:0;
                        		
                        	         boolean s40=seat.getV13();
                        		int n40=s40?1:0;
                        		String S40=s40?"v13/":"";  
                        		int p40=s40?1000:0;
                        		
                        	                        	
                        	 boolean s41=seat.getV14();
                        		int n41=s41?1:0;
                        		String S41=s41?"v14/":"";                       	
                        		int p41=s41?1000:0;
                        		
                        	         boolean s42=seat.getV15();
                        		int n42=s42?1:0;
                        		String S42=s42?"v15/":"";  
                        		int p42=s42?1000:0;      	

                        	 boolean s43=seat.getV16();
                        		int n43=s43?1:0;
                        		String S43=s43?"v16/":"";                       	
                        		int p43=s43?1000:0;
                        		
                        	         boolean s44=seat.getV17();
                        		int n44=s44?1:0;
                        		String S44=s44?"v17/":"";  
                        		int p44=s44?1000:0;
                        	                        	
                        	 boolean s45=seat.getV18();
                        		int n45=s45?1:0;
                        		String S45=s45?"v18/":"";                       	
                        		int p45=s45?1000:0;
                        		
                        	         boolean s46=seat.getC01();
                        		int n46=s46?1:0;
                        		String S46=s46?"c01/":"";   
                        		int p46=s46?1500:0;
                        		
                        	 boolean s47=seat.getC02();
                        		int n47=s47?1:0;
                        		String S47=s47?"c02/":"";                       	
                        		int p47=s47?1500:0;
                        		
                        	         boolean s48=seat.getC03();
                        		int n48=s48?1:0;
                        		String S48=s48?"c03/":"";  
                        		int p48=s48?1500:0;
                        		
                        	                        	
                        	 boolean s49=seat.getC04();
                        		int n49=s49?1:0;
                        		String S49=s49?"c04/":"";                       	
                        		int p49=s49?1500:0;
                        		
                        	         boolean s50=seat.getC05();
                        		int n50=s50?1:0;
                        		String S50=s50?"c05/":"";  
                        		int p50=s50?1500:0;
                        		
                        	 boolean s51=seat.getC06();
                        		int n51=s51?1:0;
                        		String S51=s51?"c06/":"";                       	
                        		int p51=s51?1500:0;
                        		
                        	 boolean s52=seat.getC07();
                        		int n52=s52?1:0;
                        		String S52=s52?"c07/":"";  
                        		int p52=s52?1500:0;
                        		
                        	                        	
                        	 boolean s53=seat.getC08();
                        		int n53=s53?1:0;
                        		String S53=s53?"c08/":"";                       	
                        		int p53=s53?1500:0;
                        		
                        	         boolean s54=seat.getC09();
                        		int n54=s54?1:0;
                        		String S54=s54?"c09/":"";   
                        		int p54=s54?1500:0;
                        		
                        	 boolean s55=seat.getC10();
                        		int n55=s55?1:0;
                        		String S55=s55?"c10/":"";                       	
                        		int p55=s55?1500:0;
                        		
                        	   boolean s56=seat.getC11();
                        		int n56=s24?1:0;
                        		String S56=s24?"c11/":"";  
                        		int p56=s56?1500:0;
                        		
                        		
                        	 boolean s57=seat.getC12();
                        		int n57=s25?1:0;
                        		String S57=s25?"c12,":""; 
                        		int p57=s57?1500:0;
                        	
                        	
                        	int n=n1+n2+n3+n4+n5+n6+n7+n8+n9+n10+n11+n12+n13+n14+n15+n16+n17+n18+n19+n20
                        			+n21+n22+n23+n24+n25+n26+n27+n28+n29+n30+n31+n32+n33+n34+n35+n36+n37+n38+n39+n40
                        			+n41+n42+n43+n44+n45+n46+n47+n48+n49+n50+n51+n52+n53+n54+n55+n56+n57;
                        	
                        	String S=S1+S2+S3+S4+S5+S6+S7+S8+S8+S10+S11+S12+S13+S14+S15+S16+
                        			S17+S18+S19+S20+S21+S22+S23+S24+S25+S26+S27+S28+S29+S30+S31+S32+
                        			S33+S34+S35+S36+S37+S38+S39+S40+S41+S42+S43+S44+S45+S46+S47+S48+
                        			S49+S50+S51+S52+S53+S54+S55+S56+S57;
                        	int p=p1+p2+p3+p4+p5+p6+p7+p8+p9+p10+p11+p12+p13+p14+p15+p16+p17+p18+p19+p20
                        			+p21+p22+p23+p24+p25+p26+p27+p28+p29+p30+p31+p32+p33+p34+p35+p36+p37+p38+p39+p40
                        			+p41+p42+p43+p44+p45+p46+p47+p48+p49+p50+p51+p52+p53+p54+p55+p56+p57;
                        %>

                               
                    <form:form action="/JOC11CINEMA/confirm" method="POST" modelAttribute="user">
                       <div id="credit-card" class="tab-pane fade show active pt-3">
                         <div class="form-group"> 
                         <form:hidden path="movieId" value="<%=movieId%>"/>
                         <form:hidden path="totalPrice" value="<%=p%>"/>
                         <form:label path="numberOfSeats"> <h6 class="text-light">Number of Seat</h6></form:label>
                         <form:input   path="numberOfSeats"  cssClass="form-control" readonly="true" value="<%=n%>" disabled="disabled"/> 
                         </div>
                          <div class="form-group"> 
                          <form:label path="seats"><h6 class="text-light">Your Seats</h6> </form:label>
                          <form:input path="seats" id="number" value="<%=S %>" cssClass="form-control" readonly="true" disabled="disabled"/>
                            <span id="numberError" style="color: red;"></span><br>
                          </div>  
                          <div class="form-group"> 
                          <form:label path="userName"><h6 class="text-light">User Name</h6></form:label>
                           <form:input id="name" path="userName" placeholder="Enter Name" cssClass="form-control"/> 
                           <span id="nameError" style="color: red;"></span><br>
                          
                           </div>
                           <div class="form-group"> 
                           <form:label path="email"><h6 class="text-light">Email</h6></form:label>
                           <form:input type="?email?" id="email" path="email" placeholder="Enter Email" cssClass="form-control" /> </div>
                           <span id="emailError" style="color: red;"></span><br>
                         
                           <div class="form-group">
                            <form:label path="phoneNo"><h6 class="text-light">Phone No</h6></form:label>
                           <form:input type="?tel?" id="password" path="phoneNo" placeholder="01/02/09998877665"  pattern="[0]{1}[1,2,9]{1}[0-9]{9}" cssClass="form-control"/>
                             <span id="passwordError" style="color: red;"></span><br>
                         	
                         </div>
                         <br>
                        </div>
                      <div class="card-footer">&nbsp;
                           <a href="/JOC11CINEMA/remove" class="btn btn-danger english">Reset</a>&nbsp;
                            <a href="/JOC11CINEMA/buyTicket/<%=movieId %>" class="btn btn-warning english">Back</a>
                           <!-- <input type="submit" value="Confirm" class="btn btn-success english"> -->
                           <input type="submit" value="Confirm" class="btn btn-success english" onclick=" return validateForm()">
                     </div>
                  </form:form>
                                                       
             </div>
            </div>        
          </div>
         </div>
        <div class="video">
                <div id="carouselExampleControls" data-interval="1000" class="carousel slide col-md-4 col-lg-3" data-ride="carousel">
    <div class="carousel-inner " > 
    
      <div class="carousel-item active " >
        <img src="assets/slideshowphoto/p1.jpg" class="d-block w-100 myslideimage" alt="...">    
      </div>
      
   <c:forEach var="j" begin="2" end="20">
         <div class="carousel-item " >
        <img src="assets/slideshowphoto/p${j }.jpg" class="d-block w-100 myslideimage" alt="...">    
      </div>
    </c:forEach>

      
    </div>
   
  </div>
     
        </div>
      </div>
      </div>
      <br><br><br><br>
      
   <p class="legal text-light">JOC11 CINEMA 2023 CREATED BY &nbsp; <i>YOEYOE SHINSHIN </i> &nbsp;  <i class="fas fa-heart"></i> </p>
  </div> 
  <script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
  <script
    src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script
    src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"></script>
<script>
        function validateForm() {
          var name = document.getElementById("name").value;
          var email = document.getElementById("email").value;
          var password = document.getElementById("password").value;
          var number = document.getElementById("number").value;
          var nameError = document.getElementById("nameError");
          var emailError = document.getElementById("emailError");
          var passwordError = document.getElementById("passwordError");
          var numberError = document.getElementById("numberError");
          var isValid = true;
        
          if (name == "") {
            nameError.innerHTML = "Username must not be null !!!";
            isValid = false;
          } else {
            nameError.innerHTML = "";
          }
          if(number == ""){
        	  numberError.innerHTML = "Select your seat & click<i> <b>Back</b></i> button !!!";
        	  isValid = false;
          }
          
        
          if (email == "") {
            emailError.innerHTML = "Email must not be null !!!";
            isValid = false;
          } else if (!isValidEmail(email)) {
            emailError.innerHTML = "Email is invalid !!!";
            isValid = false;
          } else {
            emailError.innerHTML = "";
          }
        
          
          if (password == "") {
            passwordError.innerHTML = "Phone Number must not be null !!!";
            isValid = false;
          } else if (!isValidPassword(password)) {
              passwordError.innerHTML = "Phone No is invalid !!!";
              isValid = false;
            }else {
            passwordError.innerHTML = "";
          }
        
          return isValid;
        }
        
        function isValidEmail(email) {
          // Use a regular expression to check if the email is valid
          var emailRegex = /\b[A-Za-z0-9._%+-]+@gmail\.com\b/;
          return emailRegex.test(email);
        }
        
        function isValidPassword(password){
        	var passwordRegex=/[0]{1}[1,2,9]{1}[0-9]{9}/;
        		return passwordRegex.test(password);
        }
        </script>

</body>
</html>