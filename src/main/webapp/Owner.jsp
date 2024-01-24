<%@page import="java.util.List"%>
<%@page import="dbconnection.DbCon"%>
<%@page import="servlet.HousecardDao"%>
<%@page import="servlet.Housecard"%>
<%@page import="servlet.Owner"%>
<%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement" %>
 <%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Owner Page</title>
<style type="text/css">
.welcome{
margin-bottom:10px;
text-transform:uppercase;
color:#008B8B;
margin-top:-480px;
margin-left:300px;
}
.main-card{
display:flex;
grid-template-column:1fr 1fr 1fr 1fr;
gap:20px;
margin:20px 0;
}

.card{
width:100%;
display:flex;
flex-direction:column;
justify-content:space-around;
padding:25px;
background-color:#FAEBD7;
box-sizing:border-box;
border:1px solid #d2d2d3;
border-radius:5px;
box-shadow:0 6px 7px -4px rgba(0,0,0,0.2);
}


.card span{
font-size:20px;
font-weight:20px;
}

.card-inner{
display:flex;
align-items:center;
justify-content:space-between;
}

.card-inner span{
color:#A9A9A9;
display:flex;
align-items:center;
justify-content:space-between;
}

.card:first-child{
border-left:7px solid #246dec;
}
.card:nth-child(2){
border-left:7px solid #f5b74f;
}
.card:nth-child(3){
border-left:7px solid #367952;
}
footer{
background-color:#008B8B;
margin-top:500px
}
</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>
<div class="welcome">
<h3 class="font-weight-bold">welcome <%=auth.getFname() %> <%=auth.getLname() %> </h3>

<div class="main-card">
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from house where status='available'";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
<div class="card">
<div class="card-inner">
<p class="text-Dark">Available Houses</p>
<span class="bi bi-person"></span>
</div>
<span class="text-info font-weight-bold"><%=count %></span>
</div>

    <%}
}catch(Exception e){
	e.printStackTrace();
}

%>


<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from house where status='rented'";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
	
<div class="card">
<div class="card-inner">
<p class="text-Dark">Occupied Houses</p>
<span class="bi bi-person-fill"></span>
</div>
<span class="text-info font-weight-bold"><%=count %></span>

</div>

    	     <%}
}catch(Exception e){
	e.printStackTrace();
}

%>




	
	
	<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from contract ";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
	<div class="card">
	<div class="card-inner">
	<p class="text-Dark">TOTAL Contract</p>
	<span class="bi bi-clipboard2-check"></span>
	</div>
	

	<span class="text-info font-weight-bold"> <%=count %> </span>
	
	</div>

    <%}
}catch(Exception e){
	e.printStackTrace();
}

%>





</div>
</div>


<footer>

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

</footer>


</body>

</html>