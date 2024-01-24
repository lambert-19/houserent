<%@page import="servlet.Client"%>
<%@page import="servlet.Housecard" %>
<%@page import="java.util.*"%>
<%@page import="servlet.Cart"%>
<%@page import="servlet.HousecardDao"%>
<%@ page import="dbconnection.DbCon" %>
<%@ page import="servlet.Details" %>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.Statement" %>
 <%@page import="java.sql.Connection" %>

    <%
Client auth=(Client)request.getSession().getAttribute("auth");
 if(auth!=null){
	 request.setAttribute("auth", auth);
 }
 
 
 %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Details</title>
<style type="text/css">
.bgcolor{
background-color:#008B8B;
}
section{
margin-top:30vh;
}
.bg{
background-color:#008B8B;
}
.row-1 a{
margin:10px;
margin-top:30px;
display:flex;
}
button{
margin-top:80px;
}
h3{
margin-left:-200px;
color:#008B8B;
text-transform:lowercase;
}
.row-1 span{
margin-left:0;
color:grey;
font-family:sans-serif;
text-transform:capitalize;
}
.row-1 a{
color:black;
text-indent: 50px;
font-size:20px;
}
h5{
margin-bottom:10px;
text-transform:uppercase;
color:#008B8B;
}
.tooltip {
     font-family: Sora, sans-serif;
     font-weight: 300;
     line-height: 1.4;
     font-size: 1rem;
     text-transform:uppercase;
}
 .bs-tooltip-top .tooltip-arrow::before, .bs-tooltip-auto[data-popper-placement^=top] .tooltip-arrow::before {
     border-top-color: #008B8B;
}
 .bs-tooltip-end .tooltip-arrow::before, .bs-tooltip-auto[data-popper-placement^=right] .tooltip-arrow::before {
     border-right-color: #008B8B;
}
 .bs-tooltip-bottom .tooltip-arrow::before, .bs-tooltip-auto[data-popper-placement^=bottom] .tooltip-arrow::before {
     border-bottom-color: #008B8B;
}
 .bs-tooltip-start .tooltip-arrow::before, .bs-tooltip-auto[data-popper-placement^=left] .tooltip-arrow::before {
     border-left-color: #008B8B;
}
 .tooltip-inner {
     color: #fff;
     background-color: #008B8B;
}
.btn{
width:210px;
}
</style>
</head>
<body>



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
    
        <a class="nav-link active" aria-current="page" href="cart.jsp">Favorite<i class="bi bi-star"></i><span class="badge text-bg-danger">${cart_list.size()}</span></a>
          <a class="nav-link active" aria-current="page" href="clientUpdatePage.jsp?=<%=auth.getEmail()  %>" >
          
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
                  alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                  style="width: 30px;">
              <%=auth.getFname() %> 
          </a>
          
           <a class="nav-link active" aria-current="page" href="Logout">Logout</a>
      </div>
    </div>
    
    <div></div>
  </div>
</nav>



<section class="details ">

<div class="container-fluid p-3">
<div class="row">
 <%
 int idh=Integer.parseInt(request.getParameter("id"));

 try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
		Statement ps=con.createStatement();
String query="select * from house where idhouse="+ idh + "";

ResultSet rs=ps.executeQuery(query);

while(rs.next()){
	
	String title=rs.getString("title");
	String floor=rs.getString("floor");
	String house_type=rs.getString("house_type");
	String address =rs.getString("owner_name");
	String a_name=rs.getString("agent_name");
	String a_phone=rs.getString("agent_phone");
	String rent=rs.getString("rent");
	String deposit=rs.getString("deposit");
	String description = rs.getString("description");
	String district=rs.getString("district");
	String hall=rs.getString("hall");
	String area=rs.getString("area");
	String categorie=rs.getString("categorie");
	String image=rs.getString("image_name");
	String facilities=rs.getString("facilities");
	
	%>
	            <h5 class="text-center">  <%=title %> </h5>
	  <div class="col-md-6 text-center p-3 border">
	  <a href="">
   <img height="600px" width="430px" src="photo/<%=image %>"><br>
   </a>
</div>

<div class="col-md-6 text-center p-3 border">
<h3><%=rent %> yuan/Month</h3>

<div class="row-1">
<a ><span>rental Method:</span>  <%= categorie %> </a> <br>
<a ><span>Property type:</span>
<%=house_type %> ,<%= hall %> ,<%=area %> m² </a> <br>

<a ><span>Floor:</span> <%=floor %></a> <br>

<a ><span>District:</span><%=district %></a> <br>

<a ><span>Address:</span><%=address %> </a> <br>


<a><span>Agent Name:</span> <%=a_name %> </a>


<button type="button"  class="btn btn-outline-success btn-lg " data-bs-toggle="tooltip" data-bs-placement="top" title="
 Agent Phone: <%=a_phone %>  "><i class="bi bi-telephone-fill"></i>  Call</button>



<input type="hidden" name="id" value="<%=idh %>">

</div>
</div>

<div class="row-3 w-50">
<h2>House Description</h2>
<%=description %>
</div>


<div class="row-2" >
<h2>Listing Details</h2>
 <%=facilities %>
</div>
	
	
<% }
}catch(Exception e){
   e.printStackTrace();
}
 
 %>

	
	 

	


</div>

</div>

</section>

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
                            <button type="button" class="btn btn-primary py-2 position-absolute top-0 end-0 mt-2 me-2 w-50">SignUp</button>
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
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.1.js" ></script>

<script type="text/javascript">
const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))

</script>

</body>
</html>