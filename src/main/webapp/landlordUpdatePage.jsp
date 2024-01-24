<%@page import="servlet.Owner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <%
    Owner auth=(Owner)request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth", auth);
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Owner Page</title>
<style type="text/css">
.bgcolor{
background-color:#008B8B;
}
section{
margin-top:80px;
}
ul{
margin-top:15px;
}
li i{
color:#008B8B;
}
li span{
color:#008B8B;
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
        
        
       
          
          <a class="nav-link active" aria-current="page" href="landlordUpdatePage.jsp?id=<%= auth.getId() %>" >
          
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
                  alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                  style="width: 30px;">
              
          <%=auth.getFname() %></a>
         
         
          <form action="Logout" method="post">
          <a class="nav-link active" aria-current="page" href="Logout">Logout</a>
          </form>
      </div>
    </div>
    
    <div></div>
  </div>
</nav>

<section class="container">
<main class="view ">
<div class="main">
<form action="UpdateLandlordinfo" method="post" id="register">
<h2 class="text-center fs-1 ">Update LandLord Information</h2>


<div class="card align-items-center" style="width:100%;">

<div class="mb-3 w-50 mt-5">
  <label for="exampleFormControlInput1" class="form-label">First Name </label>
  <input type="text" class="form-control" value="<%=auth.getFname() %>" id="f_name" name="f_name" >
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Last Name </label>
  <input type="text" class="form-control" id="l_name" name="l_name" value="<%=auth.getLname() %>">
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Email </label>
  <input type="email" class="form-control" id="email" name="email" value="<%=auth.getEmail() %>" >
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Password </label>
  <input type="password" class="form-control" id="password" name="password" value="<%=auth.getPass() %>">
</div>



<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label"> Phone</label>
  <input type="text" class="form-control" id="phone" name="phone" value=" <%=auth.getPhone() %>">
</div>
<input type="hidden" name="id" value="<%=auth.getId() %>">

<button type="submit" class="btn btn-outline-success btn-lg px-5 mt-3 mb-2" name="button">Update</button>

</div>
</form>
</div>
</main>
</section>

</body>
</html>