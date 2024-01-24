<%@page  import="servlet.*"%>
<%@page import="java.util.*"%>
<%@page import="servlet.Cart"%>
<%@page import="servlet.HousecardDao"%>
<%@ page import="dbconnection.DbCon" %>
<%@page import="servlet.Housecard" %>
<%@ page import="servlet.Details" %>

<%@page  import="servlet.Client"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
Client auth=(Client)request.getSession().getAttribute("auth");
if(auth!=null){
	 request.setAttribute("auth", auth);
} 

HousecardDao hd= new HousecardDao(DbCon.getConnection());
List<Housecard> card =hd.getAllHouse();



ArrayList<Housecard> cart_list =(ArrayList<Housecard>)session.getAttribute("cart-list");
if(cart_list !=null){

	 request.setAttribute("cart_list", cart_list);
}


%>


<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Customer Page</title>
<style type="text/css">
.bgcolor{
background-color:#008B8B;
}
section{
margin-top:50px;
}
.bg{
background-color:#008B8B;
}

.links{
margin-top:40px;
}
.links a{
text-decoration:none;
margin-left:5px;
 text-transform: lowercase;
 
}


</style>
</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bgcolor">
  <div class="container-fluid">
  
     <a class="navbar-brand" href="ClientPage.jsp">
      <img src="logo.png" class="img-fluid" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      4rent
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="mx-auto"></div>
      <div class="navbar-nav">
        
        
        <a class="nav-link active" aria-current="page" href="cart.jsp">Favorite<i class="bi bi-star"></i><span class="badge text-bg-danger">${cart_list.size()}</span></a>
          
          <a class="nav-link active" aria-current="page" href="clientUpdatePage.jsp?=<%=auth.getEmail()  %>" >
          
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
                  alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                  style="width: 30px;">
              
         <%=auth.getFname() %> </a>
         
         
          <form action="Logout" method="post">
          <a class="nav-link active" aria-current="page" href="Logout">Logout</a></form>
      </div>
    </div>
    
    <div></div>
  </div>
</nav>




<!-- Search Start -->
<section>

        <div class="container-fluid bg mb-5 wow fadeIn" data-wow-delay="0.1s" style="padding: 35px;">
        <form id="form" name="form" method="post" action="Search.jsp">
            <div class="container" >
                <div class="row g-2">
                    <div class="col-md-10">
                        <div class="row g-2">
                          
                          
                            <div class="input-group">
  <input type="search" name="search" class="form-control rounded w-50" placeholder="Enter information about the house" aria-label="Search" aria-describedby="search-addon" >
  <button type="submit" class="btn btn-dark border-0 w-20 py-3">search</button>
</div>
                            


                        </div>
                    </div>
                    
                </div>
            </div>
            
            
            
            </form>
        </div>
        
         <div class="links">
        <div class="district-links"> 
        <h6 style="color:grey;">District:
<a href="shenbei.jsp" style="color:black;">Shenbei</a>
<a href="Huanggu.jsp" style="color:black;">Huanggu</a>
<a href="Heiping.jsp" style="color:black;">Heiping</a>
<a href="Shenhe.jsp" style="color:black;">ShenHe</a>
<a href="Tiexi.jsp" style="color:black;">Tiexi</a>
</h6>
</div>

      <div class="Price-links"> 
      
        <h6 style="color:grey;">Rent:

<a href="500-1000.jsp" style="color:black;">500-1000RMB</a>
<a href="1000-1500.jsp" style="color:black;">1000-1500RMB</a>
<a href="1500-2000.jsp" style="color:black;">1500-2000RMB</a>
<a href="2000-2500.jsp" style="color:black;">2000-2500RMB</a>
<a href="2500-3000.jsp" style="color:black;">2500-3000RMB</a>
<a href="3000-3500.jsp" style="color:black;">3000-3500RMB</a>
<a href="3500-4000.jsp" style="color:black;">3500-4000RMB</a>

</h6>

</div>

      <div class="house_type-links"> 
        <h6 style="color:grey;">TYPE:
<a href="1 room.jsp" style="color:black;">1 room</a>
<a href="2rooms.jsp" style="color:black;">2 rooms</a>
<a href="3rooms.jsp" style="color:black;">3 rooms</a>
<a href="4rooms.jsp" style="color:black;">4 rooms</a>
<a href="5rooms.jsp" style="color:black;">5 rooms</a>
</h6>
</div>

   <div class="categorie-links"> 
        <h6 style="color:grey;">Category:
<a href="All_wholeset_rental.jsp" style="color:black;">whole set rental</a>
<a href="All_singleroom_rental.jsp" style="color:black;">single room rental</a>

</h6>
</div>
</div>
        </section>
        <!-- Search End -->
        
     <!-- properties start-->
     	 
     <div class="container">
     <div class="card-header my-3 "><h1 class="text-center text-uppercase">whole Set rental</h1>
     <div class="row">
     <%
     
     HousecardDao dao=new HousecardDao(DbCon.getConnection());
     List<Housecard> list=dao.getallnewHouse();
     for(Housecard h:list){%>
    
    	 
    	 <div class="card mx-auto w-50 gx-5 px-4 my-5" style="width: 18rem;">
  		  <img src="photo/<%=h.getImage() %>" class="card-img-top" alt="...">
  		  <div class="card-body">
  		    <h5 class="card-title">Floor:<%=h.getFloor() %></h5>
  		    <h6 class="price">Rent/Month:<%=h.getRent() %></h6>
  		    <h6 class="category">House Type:<%=h.getHouse_type() %></h6>
  		    <h6 class="category">Category:<%=h.getCategorie() %> </h6>
  		    <div class="mt-3 d-flex justify-content-between">
  		    <a href="Details.jsp?id=<%=h.getId() %>" class="btn btn-outline-info">Details</a>
  		    <a href="AddToCartServlet?id=<%=h.getId() %>" class="btn btn-outline-primary">Add Favorite  </a>
  		    </div>
  		    </div>
  		  </div>
  		
  		 
<%
}%>
      </div>
    
   
     </div>
     <div class="text-center mt-2">
     <a href="All_wholeset_rental.jsp" class="btn btn-danger btn-sm text-white">View All</a>
     </div>
     </div>
     
     <!-- Single rental category -->
     
     <div class="container">
     <div class="card-header my-3 "><h1 class="text-center text-uppercase">single room rental</h1>
     <div class="row">
          <%
     HousecardDao dao2=new HousecardDao(DbCon.getConnection());
     List<Housecard> list2=dao2.getalloldHouse();
     for(Housecard h:list2){%>
    	 <div class="card mx-auto w-50 gx-5 px-4 my-5" style="width: 18rem;">
  		  <img src="photo/<%=h.getImage() %>" class="card-img-top" alt="...">
  		  <div class="card-body">
  		    <h5 class="card-title">Floor:<%=h.getFloor() %></h5>
  		    <h6 class="price">Rent/Month:<%=h.getRent() %></h6>
  		    <h6 class="category">House Type:<%=h.getHouse_type() %></h6>
  		    <h6 class="category">Category:<%=h.getCategorie() %> </h6>
  		    <div class="mt-3 d-flex justify-content-between">
  		    <a href="DetailsServlet?id=<%=h.getId() %>" class="btn btn-outline-info">Details</a>
  		    <a href="AddToCartServlet?id=<%=h.getId() %>" class="btn btn-outline-primary">Add Favorite </a>
  		    </div>
  		    </div>
  		  </div>
  		
<%
}%>
     
    
     </div>
     </div>
     <div class="text-center mt-2">
     <a href="All_singleroom_rental.jsp" class="btn btn-danger btn-sm text-white">View All</a>
     </div>
     </div>
     <!-- Single room rental End  -->
     
   
     <!-- properties End -->
        


<!-- Footer Start -->
        <div class="container-fluid bg text-white-50 footer pt-5 mt-5 wow fadeIn" data-wow-delay="0.1s">
            <div class="container py-5">
                <div class="row g-5">
                    <div class="col-lg-3 col-md-6">
                        <h5 class="text-white mb-4">Get In Touch</h5>
                        <p class="mb-2"><i class="fa fa-map-marker-alt me-3"></i>123 Street, New York, USA</p>
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