<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css">
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">
    
    <title>Landlord Registration</title>
    
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
     
     <!--  -->
    <section  class="vh-30 gradient-custom" >
     
  <form action="Owner_registration" method="post" id="register" >
  
    <div class="container py-5 h-100">
    <div class="landlord signup">
    <div class=container-fluid>
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card bg-dark text-white" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">
    
                   <h2>Landlord Registration</h2>
    
    <div class="mb-md-5 mt-md-4 pb-5 mx-auto items-center">
             <p class="mb-4">Client Registration <a href="clientRegistration.jsp" class="text-white-50 fw-bold">Client</a>
              </p>   
    
     <div class="form-outline form-white mb-4">
     
   <label for="first name">First Name</label>
   <input type="text" id="f_name"  name="first_name" required>
         <p>Error Message</p>
   
   </div>
   
	 <div class="form-outline form-white mb-4">
	
	 <label for="last name">Last Name</label>
   <input type="text" id="l_name"  name="last_name" required>
  <p>Error Message</p>
  
	 </div>
   
   
	 
      
     <div class="form-outline form-white mb-4">
     
   <label for="email">Email</label>
   <input type="email" id="email"  name="email" required>
   
       <p>Error Message</p>
      
      </div>
       
        <div class="form-outline form-white mb-4">
        
   <label for="password">Password</label>
   <input type="password" id="password"  name="password" required>
   
        <p>Error Message</p>
       
      </div>
       
        <div class="form-outline form-white mb-4">
        
   <label for="password2">confirm password</label>
   <input type="password" id="password2"  name="password2"  required>
   
       <p>Error Message</p>
     
       </div>
       
        <div class="form-outline form-white mb-4">
       
   <label for="phone">phone</label>
   <input type="text" id="phone"  name="phone" required>
   
        <p>Error Message</p>
        
           </div>
      <button type="submit" class="btn btn-outline-light btn-lg px-5" name="button">Register</button>
      
       </div>
      
            <div>
              <p class="mb-0">Already have an account? <a href="landlordlogin.jsp" class="text-white-50 fw-bold" >Sign In</a>
              </p>
            </div>
         
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

  <script src="registration.js"></script>
  
  </body>

</html>