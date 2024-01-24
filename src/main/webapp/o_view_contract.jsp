<%@page import="servlet.Contract"%>
<%@page import="java.util.List"%>
<%@page import="servlet.Crud"%>
<%@page import="dbconnection.DbCon"%>
<%@page import="servlet.CrudDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Landlord Page</title>
<style type="text/css">
section{
margin-top:-500px;
}
.main{
margin-top:30px;
margin-left:220px;
}
h2{
margin-bottom:10px;
text-transform:uppercase;
color:#008B8B;
}
footer{
background-color:#008B8B;
margin-top:500px
}
</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>

<section class="container">
<main class="view ">
<div class="main">
<h2 class="text-center fs-1 ">All Contract Details</h2>
<table class="table table-dark table-striped-columns table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">House_number</th>
      <th scope="col">Address</th>
      <th scope="col">Lessor_Name</th>
      <th scope="col">Renter_Name</th>
      <th scope="col">Rent</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>

 <tbody>
    <%
    String name=auth.getFname();
 CrudDao dao=new CrudDao(DbCon.getConnection());
 List<Contract> list=dao.Allcontractbyname(name);
 for(Contract c: list){%>
	 
	  <tr>
      <th scope="row"><%=c.getId() %></th>
      <td><%=c.getHouse_number() %></td>
      <td><%=c.getHouse_address() %></td>
      <td><%=c.getLessor_name() %></td>
      <td><%=c.getRenter_name() %></td>
      <td><%=c.getRent() %></td>
      <td>
     
     <a href="o_contract_dtls.jsp?id=<%=c.getId()  %>" class="btn btn-info btn-sm">view
       </a>
     
       <a href="o_Update_Contract.jsp?id=<%=c.getId()  %>" class="btn btn-primary btn-sm">Edit
       </a>
     
     
      <a href="Delete5?id=<%= c.getId() %>" class="btn btn-danger btn-sm">Delete
      </a>
     
      </td>
    </tr>
	 
 <%}
 
 %>
    
  </tbody>
</table>
</div>
</main>

</section>


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

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>