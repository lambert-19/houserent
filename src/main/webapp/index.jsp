<%@page import="java.util.*"%>
<%@page import="servlet.Cart"%>
<%@page import="servlet.HousecardDao"%>
<%@ page import="dbconnection.DbCon" %>
<%@page import="servlet.Housecard" %>
<%@ page import="servlet.Details" %>


<% 


ArrayList<Housecard> cart_list =(ArrayList<Housecard>)session.getAttribute("cart-list");
List <Housecard> housecard=null;
if(cart_list !=null){

	 HousecardDao House=new HousecardDao(DbCon.getConnection());
	 housecard=House.getHousecard(cart_list);
	 request.setAttribute("cart_list", cart_list);
}

HousecardDao hd= new HousecardDao(DbCon.getConnection());
List<Housecard> card =hd.getAllHouse();

%>


<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>House Rental</title>

<style>

.banner-image{
background-image:url('img.png');
background-size:cover;
}

.bgcolor.scrolled{
background-color:#008B8B;
}
.bg{
background-color:#008B8B;
}


</style>
</head>

<body>
<section>
 <nav class="navbar fixed-top navbar-expand-lg navbar-light bgcolor">
  <div class="container-fluid">
  
     <a class="navbar-brand" href="index.jsp">
      <img src="logo.png" class="img-fluid" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      4rent
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="mx-auto"></div>
      <div class="navbar-nav">
        <a class="nav-link active" aria-current="page" href="index.jsp">Home</a>
         <a class="nav-link active" aria-current="page" href="#about">About Us</a>
          <a class="nav-link active" aria-current="page" href="#house">Property</a>
          <a class="nav-link active" aria-current="page" href="clientRegistration.jsp">Sign Up</a>
           <a class="nav-link active" aria-current="page" href="clientlogin.jsp">Sign In</a>
      </div>
    </div>
    
    
  </div>
</nav>
<!-- Image banner -->
<div class="banner-image w-100 vh-100 d-flex justify-content-center align-items-center">

<div class="content center">
<h1 class="test"> WELCOME TO OUR WEBSITE</h1>
</div>

</div>



</section>


 <!-- Search Start -->
        <div class="container-fluid bg mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
        <form id="form" name="form" method="post" action="clientlogin.jsp">
            <div class="container" >
                                         <div class="input-group">
  <input type="search" name="search" class="form-control rounded w-50" placeholder="Enter information about the house" aria-label="Search" aria-describedby="search-addon" >
  <button type="submit" class="btn btn-dark border-0 w-20 py-3">search</button>
</div>
            </div>
            </form>
        </div>
        <!-- Search End -->
        
     <!-- properties start-->
     <!-- Latest House start -->
     <div class="container">
     <div class="card-header my-3 "><h1 id="house"class="text-center text-uppercase"> Houses</h1>
     <div class="row">
     <%
     if(card!=null){
   	  for (Housecard c:card){%>
    		   <div class="card mx-auto w-50 gx-5 px-4 m-5 " style="width: 18rem;">
    		  <img src="photo/<%=c.getImage()%>" class="card-img-top" alt="...">
    		  <div class="card-body">
    		    <h5 class="card-title">Floor:  <%=c.getFloor() %></h5>
    		    <h6 class="price">Rent/Month:  <%=c.getRent() %></h6>
    		    <h6 class="category">House Type: <%=c.getHouse_type() %></h6>
    		    <h6 class="category">Category:  <%=c.getCategorie() %></h6>
    		    <div class="mt-3 d-flex justify-content-between">
    		    <a href="clientlogin.jsp" class="btn btn-outline-info">Details</a>
    		    <a href="clientlogin.jsp" class="btn btn-outline-primary">Add Favorite </a>
    		    </div>
    		    
    		  </div>
    		</div>
  		
    	 <%}
     }%>
   
     </div>
     </div>
     </div>
     <!-- Latest House End -->
     
  
     
     <!-- properties End -->
        
        
        
         <!-- About Start -->
        <div id="about" class="container-xxl py-5">
            <div class="container">
                <div class="row g-5 align-items-center">
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.1s">
                        <div class="about-img position-relative overflow-hidden p-5 pe-0">
                            <img class="img-fluid w-100" src="16.jpg">
                        </div>
                    </div>
                    <div class="col-lg-6 wow fadeIn" data-wow-delay="0.5s">
                        <h1 class="mb-4">#1 Place To Find The Perfect Property</h1>
                        <p class="mb-3">Find Apartments and houses for rent at QuicklySeek. Find Apartments and houses for rent. Find it Here. Get More Results. More Info. Updated Info. Awesome Info. Latest Today. Relevant Results. Fast Response. Attractive Results. Get Latest Info.</p>
                        <p><i class="fa fa-check text-primary me-3"></i>As a landlord, you have an idea of the type of renter you’re looking for.</p>
                        <p><i class="fa fa-check text-primary me-3"></i> Although, you might be having trouble attracting those particular tenants.</p>
                      
                        <a class="btn bg btn-primary py-3 px-5 mt-2" href="">Read More</a>
                    </div>
                </div>
            </div>
        </div>
        <!-- About End -->
        
        
        
        
        
        <!-- Back to Top -->
        <a href="#" class="btn bg btn-lg btn-primary btn-lg-square back-to-top" id=top><i class="bi bi-arrow-up"></i></a>
        <!-- Back to Top End -->
        
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js" ></script>
<script >

$(window).scroll(function(){
	$('nav').toggleClass('scrolled',$(this).scrollTop()>100);
	
});
let mybutton = document.getElementById("top");
window.onscroll = function () {
	  scrollFunction();
	};

</script>


<!-- Footer Start -->
        <div class="container-fluid bg text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>Shenyang Aerospace University,Shenyang</p>
                        <p class="mb-2"><i class="fa fa-phone-alt me-3"></i>+012 345 67890</p>
                        <p class="mb-2"><i class="fa fa-envelope me-3"></i>info@example.com</p>
                        <div class="d-flex pt-2">
                            <a class="btn btn-outline-light btn-social" href=""><i class="bi bi-twitter"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="bi bi-facebook"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="bi bi-instagram"></i></a>
                            <a class="btn btn-outline-light btn-social" href=""><i class="bi bi-whatsapp"></i></a>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Quick Links</h5>
                        <a class="btn btn-link text-white-50" href="">About Us</a><br>
                        <a class="btn btn-link text-white-50" href="">Contact Us</a><br>
                        <a class="btn btn-link text-white-50" href="">Our Services</a><br>
                        <a class="btn btn-link text-white-50" href="">Privacy Policy</a><br>
                        <a class="btn btn-link text-white-50" href="">Terms & Condition</a>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Photo Gallery</h5>
                        <div class="row g-2 pt-2">
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-1.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-2.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-3.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-4.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-5.jpg" alt="">
                            </div>
                            <div class="col-4">
                                <img class="img-fluid rounded bg-light p-1" src="photo/property-6.jpg" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Newsletter</h5>
                        <p>you can us send email here</p>
                        <div class="position-relative mx-auto" style="max-width: 400px;">
                            <input class="form-control bg-transparent w-100 py-3 ps-4 pe-5" type="text" placeholder="Your email">
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2">SignUp</button>
                        </div>
                    </div>
    
                </div>
                
            </div>
                            <!-- Copyright -->
  <div class="text-center p-4" style="margin-bottom:0;">
    © 2022 Copyright:
    <span class="text-reset fw-bold">4Rent.com</span>
  </div>
  <!-- Copyright -->
        </div>
        <!-- Footer End -->
</body>


</html>