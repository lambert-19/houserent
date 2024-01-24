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
    
<title>Admin Page</title>
<style type="text/css">
section{
margin-top:-500px;
}
.main{
margin-top:30px;
margin-left:220px;
}
.insert-house{
 margin: 25px 20px 25px 20px;
 display:block;
 padding:10px;
}
.mb-3,h4 {
margin-left:20px;
}
h2{
margin-bottom:10px;
text-transform:uppercase;
color:#008B8B;
}
[id^=flexCheckDefault]{
display:inline-flex;
visibility:visible;
flex-direction:row;
align-content: space-around;
}
.check{
display:inline-block;
font-size:20px;

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

<%@ include file="sidebar.jsp" %>

<section class="container">
<div class="main  align-items-center h-100">
<h2>Add new house</h2>
<form action="Addproperty" method="post"  enctype="multipart/form-data" id="addhouse">
<div class="insert-house align-items-center">
  
   <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">TITLE</label>
  <input type="text" class="form-control" name="title "  id="title" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">FLOOR NUMBER</label>
  <input type="text" class="form-control" name="floor_number "  id="floor" >
  <p>Error message</p>
</div>



  <div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="house_type " id="house_type">
  <option selected>House Type</option>
  <option value="1 room">1 room</option>
  <option value="2 rooms">2 rooms</option>
  <option value="3 rooms">3 rooms</option>
  <option value="4 rooms">4 rooms</option>
  <option value="5 rooms">5 rooms</option>
</select>
<p>Error message</p>
  </div>
  
   <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label ">ADDRESS</label>
  <input type="text" class="form-control" name="address "  id="address" >
  <p>Error message</p>
</div>

 <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER NAME</label>
  <input type="text" class="form-control" name="o_name "  id="o_name" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER PHONE</label>
  <input type="text" class="form-control" name="o_phone "  id="o_phone" >
  <p>Error message</p>
</div>

<div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER ID CARD</label>
  <input type="number" class="form-control" name="o_id "  id="o_id" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent Name</label>
  <input type="text" class="form-control" name="a_name "  id="a_name" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent PHONE</label>
  <input type="number" class="form-control" name="a_phone "  id="a_phone" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">RENT</label>
  <input type="text" class="form-control" name="rent " id="rent" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">DEPOSIT</label>
  <input type="text" class="form-control" name="deposit " id="deposit" >
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlTextarea1" class="form-label">Description</label>
  <textarea class="form-control" name="description" id="description" rows="3"></textarea>
  <p>Error message</p>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">DISTRICT</label>
  <input type="text" class="form-control" name="district" id="district" >
  <p>Error message</p>
</div>
  
 <div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="hall " id="hall">
  <option selected>Hall</option>
  <option value="1 hall">1 hall</option>
  <option value="2 hall">2 hall</option>
  <option value="3 hall">3 hall</option>
  <option value="4 hall">4 hall</option>
  <option value="5 hall">5 hall</option>
</select>
<p>Error message</p>
  </div>
  
  <div class="mb-3 w-50">
  <label for="formFileMultiple" class="form-label">Insert House Photos</label>
  <input class="form-control" type="file" name="file" id="file" multiple>
  <p>Error message</p>
</div>
    
    <div class="mb-3 w-50">
    <label for="exampleFormControlInput1" class="form-label">AREA</label>
  <input type="text" class="form-control" id="area" name="area" >
<p>Error message</p>
</div>


<div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="category" id="category">
  <option selected>CATEGORY</option>
  <option value="single room rental">single room rental</option>
  <option value="whole set rental">whole set rental</option>
</select>
<p>Error message</p>
  </div>
  
  <div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="status"  id="status">
  <option selected>STATUS</option>
  <option value="available">available</option>
  <option value="rented">rented</option>
</select>
<p>Error message</p>
  </div>
  
  
 
 
 
  <h4>HOUSE FACILITIES</h4>
  <div class="mb-3">
  <p>Error message</p>
  <div class="check ">
<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Air Conditioner" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
   Air Conditioner
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" value="Washing Machine" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Washing Machine
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Balcony" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Balcony
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="TV" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    TV
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value=" WIFI" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    WIFI
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="BED" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    BED
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Wardrobe" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Wardrobe
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Refrigerator" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Refrigerator
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Water Heater" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Water Heater
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Broadband" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Broadband
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Heater" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Heater
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox"  value="Gas Stove" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Gas Stove
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Range Hood" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Range Hood
  </label>
</div>

<div class="form-check">
  <input class="form-check-input" type="checkbox" name="checkbox" value="Bathroom" id="flexCheckDefault" >
  <label class="form-check-label" for="flexCheckDefault">
    Bathroom
  </label>
</div>
</div>
</div>


</div>
<button type="submit" class="btn btn-outline-success btn-lg" style="float:right;margin-right:40px;">Insert</button>
</form>
</div>

</section>
<script src="addhouse.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-u1OknCvxWvY5kfmNBILK2hRnQC3Pr17a+RTT6rIHI7NnikvbZlHgTPOOmMi466C8" crossorigin="anonymous"></script> 
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>




</body>
</html>