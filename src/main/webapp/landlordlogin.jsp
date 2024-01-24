<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <title>Landlord Login</title>
    
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
p{
align-items:center;
}
section{
margin-top:50px;
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
 
 

     
     
    
     <!-- Header -->
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
    <!-- Login Part -->
    <section class="vh-30 gradient-custom">
    <form action="Ownerlogin" method="post" id="login_form" name="login_form">
  <div class="container py-5 h-100">
   <div class="container-fluid">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <div class="mb-md-5 mt-md-4 pb-5">

              <h2 class="fw-bold mb-2 text-uppercase">Landlord Login</h2>
    <p class="mb-0">I'm a client <a href="clientlogin.jsp" class="text-white-50 fw-bold">Customer</a>
              </p>          
              <p class="text-white-50 mb-5">Please enter your email and password!</p>

              <div class="form-outline form-white mb-4">
                  <label class="form-label" for="typeEmailX">Email</label>
                <input type="email" id="typeEmailX" name="email" class="form-control form-control-lg" onfocus='checkInpus(this)' required />
               
            <p>Error Message</p>
            
              </div>

              <div class="form-outline form-white mb-4">
                <label class="form-label" for="typePasswordX" >Password</label>
                <input type="password" id="typePasswordX" name="password" class="form-control form-control-lg" onblur='checkInpus(this)' required/>
                
              <p>Error Message</p>
              
             
              </div>


              <button class="btn btn-outline-light btn-lg px-5" id="submit" type="submit" name="button">Login</button>

            </div>

            <div>
              <p class="mb-0">Don't have an account? <a href="LandlordRegistration.jsp" class="text-white-50 fw-bold">Sign Up</a>
              </p>
            </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  </div>
    </form> 
</section>
    
        
     
   
    
   <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" ></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" ></script>
  
  
  </body>
  
   <script src="login.js">
    
    </script>
</html>