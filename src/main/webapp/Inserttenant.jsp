<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Insert New Client</title>
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
.card{
margin-left:80px;
}
.mb-3.succes input{
border-color:solid green;
}
.mb-3.error input{
border-color:solid red;;
}
.mb-3 p{
color:red;
font-size:15px;
margin-top:5px;
background:rgba(220, 20, 60,0.1);
visibility:hidden;
}
</style>
</head>
<body>
<%@ include file="sidebar.jsp" %>

<section class="container">
<div class="main ">
<form action="InsertClient" method="post" id="register">
<div class="Insert ">
<h2 class="text-center fs-1"> add new Client</h2>
<div class="card align-items-center" style="width:75%;">

<div class="mb-3 w-50 mt-5">
  <label for="exampleFormControlInput1" class="form-label">First Name </label>
  <input type="text" class="form-control" id="f_name" name="f_name">
   <p>Error Message</p>
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Last Name </label>
  <input type="text" class="form-control" id="l_name" name="l_name">
   <p>Error Message</p>
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Email </label>
  <input type="email" class="form-control" id="email" name="email">
   <p>Error Message</p>
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Password </label>
  <input type="password" class="form-control" id="password" name="password">
   <p>Error Message</p>
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label"> Confirm Password </label>
  <input type="password" class="form-control" id="password2" name="password2">
   <p>Error Message</p>
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label"> Phone</label>
  <input type="text" class="form-control" id="phone" name="phone">
   <p>Error Message</p>
</div>
<button type="submit" class="btn btn-outline-success btn-lg px-5 mt-3 mb-2" name="button">Register</button>
</div>


</div>

</form>
</div>
</section>
<script src="insert_owner.js"></script>
</body>
</html>