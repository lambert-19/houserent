<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
    
<title>Contract</title>
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
margin-left:50px;
}

.mb-3.succes input{
border-color:solid green;
}
.mb-3.error input{
border-color:solid red;;
}
.mb-3 p{
color:red;
font-size:13px;
margin-top:2px;
background:rgba(220, 20, 60,0.1);
visibility:hidden;
}

</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>

<section class="container">
<main class="view ">
<div class="main">
<form action="o_add_contract" method="post" id="contract" enctype="multipart/form-data">
<h2 class="text-center fs-1 ">Contract</h2>
<div class="card align-items-center" style="width:100%;">


  <div class="mb-3 w-50 mt-5">
  <label for="exampleFormControlInput1" class="form-label">FLOOR NUMBER</label>
  <input type="text" class="form-control" name="floor_number "  id="floor" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Address</label>
  <input type="text" class="form-control" name="address "  id="address" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lessor Name</label>
  <input type="text" class="form-control" name="l_name "  id="lessor_name" >
  <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lessor Phone NUMBER</label>
  <input type="text" class="form-control" name="l_phone "  id="lessor_phone" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Name of The Renter</label>
  <input type="text" class="form-control" name="name_renter "  id="renter_name" >
  <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Id Renter</label>
  <input type="text" class="form-control" name="Id_renter "  id="id_renter" >
  <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Renter Phone Number</label>
  <input type="text" class="form-control" name="r_phone "  id="renter_phone" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lease Term</label>
  <input type="text" class="form-control" name="lease_term "  id="lease_term" placeholder="Ex: 6 months" >
  <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Rent</label>
  <input type="number" class="form-control" name="rent "  id="rent"  placeholder="Ex: 2000" >
  <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agency Fee</label>
  <input type="text" class="form-control" name="agency_fee "  id="agency_fee"  placeholder="Ex: 1000" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent Name</label>
  <input type="text" class="form-control" name="agent_name "  id="agent_name" >
   <p>Error message</p>
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Date</label>
  <input type="date" class="form-control" name="date"  id="date" >
  <p>Error message</p>
</div>

<div class="mb-3 w-50">
  <label for="formFileSm" class="form-label">Contract Photo</label>
  <input class="form-control form-control-sm" id="file" name="photo" type="file">
   <p>Error message</p>
</div>

<button type="submit" class="btn btn-outline-success btn-lg px-5 mt-3 mb-2" id="submit" name="button">Insert</button>
</div>

</form>
</div>
</main>
</section>
<script src="contract.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
</body>
</html>