<%@page import="servlet.Client"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
Client auth=(Client)request.getSession().getAttribute("auth");
 if(auth!=null){
	 request.setAttribute("auth", auth);
 }
 %>
 
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
      <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    
  
    <title>Client login</title>
          <style type="text/css">
   .gradient-custom {
/* fallback for old browsers */
background: #6a11cb;

/* Chrome 10-25, Safari 5.1-6 */
background: -webkit-linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1));

/* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */
background: linear-gradient(to right, rgba(106, 17, 203, 1), rgba(37, 117, 252, 1))
}
.bgcolor{
background-color:#008B8B;
}

section{
margin-top:50px;
}
label{
width:140px;
display:inline-block;
margin:0.5cm;
font-size:16px;
font-weight:bold;
}
button{
margin-top:0.5cm;
}
.form-outline.succes input{
border-color:solid green;
}
.form-outline.error input{
border-color:solid red;;
}
.form-outline p{
color:red;
font-size:18px;
margin-top:5px;
background:rgba(220, 20, 60,0.1);
visibility:hidden;
}

    </style>
 
  </head>
  <body>
  
  <!-- Navigation Bar -->
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
         <a class="nav-link active" aria-current="page" href="#">About Us</a>
          <a class="nav-link active" aria-current="page" href="#">Blog</a>
          <a class="nav-link active" aria-current="page" href="clientRegistration.jsp">Sign Up</a>
           <a class="nav-link active" aria-current="page" href="clientlogin.jsp">Sign In</a>
      </div>
    </div>
    
    <div></div>
  </div>
</nav>

<!--  Login Part -->
 

     
     
     
      <section class="vh-30 gradient-custom">
      <form action="clientlogin" method="post" id="login_form" name="login_form" >
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Customer Login</h2>
    <p class="mb-0">I'm the Landlord <a href="landlordlogin.jsp" class="text-white-50 fw-bold">Landlord</a>
              </p>          
              
              
              <p class="text-white-50 mt-3">Please enter your email and password!</p>

              <div class="form-outline form-white mb-4 ">
               <label class="form-label" for="typeEmailX" >Email</label>
                <input type="email" id="typeEmailX" name="email" class="form-control is invalid form-control-lg" required />
               
               <p>Error message</p>
              
              </div>
              
              <div class="form-outline form-white mb-4">
              <label class="form-label" for="typePasswordX"  >Password</label>
                <input type="password" id="typePasswordX" name="password" class="form-control form-control-lg"  required/>
                
           <p>Error message</p>
               
              </div>
                   
              

              <button class="btn btn-outline-light btn-lg px-5" type="submit" id="submit" name="button">Login</button>

            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="clientRegistration.jsp" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
    </div>
  </form>
</section>

<script src="login.js">

    </script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>

</html>