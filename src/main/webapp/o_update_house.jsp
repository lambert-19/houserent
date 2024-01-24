<%@page import="servlet.Housecard"%>
<%@page import="servlet.HousecardDao"%>
<%@page import="dbconnection.DbCon"%>
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
    
<title>Landlord Page</title>
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


</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>

<section class="container">
<div class="main  align-items-center h-100">
<h2>Update House</h2>

<%
int id=Integer.parseInt(request.getParameter("id"));
HousecardDao dao=new HousecardDao(DbCon.getConnection());
Housecard c=dao.getidhouse(id);
%>

<form action="o_Update_House" method="post"  enctype="multipart/form-data">
<div class="insert-house align-items-center">
  
  <input type="hidden" name="id" value="<%=c.getId() %>">
  
   <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">TITLE</label>
  <input type="text" class="form-control" name="title " value="<%=c.getTitle() %>" id="title">
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">FLOOR NUMBER</label>
  <input type="text" class="form-control" name="floor_number "  id="floor"  value="<%=c.getFloor() %>">
</div>



  <div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="house_type " id="house_type">
  
  <%
  if("1 room".equals(c.getHouse_type())){
	  %>
	  <option value="1 room">1 room</option>
	  <option value="2 rooms">2 rooms</option>
	  <option value="3 rooms">3 rooms</option>
	  <option value="4 rooms">4 rooms</option>
	  <option value="5 rooms">5 rooms</option>
  <%
  }else if("2 rooms".equals(c.getHouse_type())){
	  %>
	  <option value="2 rooms">2 rooms</option>
	   <option value="1 room">1 room</option>
	  <option value="3 rooms">3 rooms</option>
	  <option value="4 rooms">4 rooms</option>
	  <option value="5 rooms">5 rooms</option>
	 <%}else if("3 rooms".equals(c.getHouse_type())){
	  %>
	   <option value="3 rooms">3 rooms</option>
	   <option value="1 room">1 room</option>
	  <option value="2 rooms">2 rooms</option>
	  <option value="4 rooms">4 rooms</option>
	  <option value="5 rooms">5 rooms</option>
	  <%}else if("4 rooms".equals(c.getHouse_type())){
	  %>
	  <option value="4 rooms">4 rooms</option>
	   <option value="1 room">1 room</option>
	  <option value="2 rooms">2 rooms</option>
	  <option value="3 rooms">3 rooms</option>
	  <option value="5 rooms">5 rooms</option>
      <%}else{
      %>
    	  <option value="5 rooms">5 rooms</option>
   	   <option value="1 room">1 room</option>
   	  <option value="2 rooms">2 rooms</option>
   	  <option value="3 rooms">3 rooms</option>
   	  <option value="4 rooms">4 rooms</option>
    	  <%}
    	  %>
    	  
 
</select>

  </div>
  
   <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label ">ADDRESS</label>
  <input type="text" class="form-control" name="address "  id="address" value="<%=c.getAddress() %>">
</div>

 <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER NAME</label>
  <input type="text" class="form-control" name="o_name "  id="o_name" value="<%=c.getOwner() %>" >
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER PHONE</label>
  <input type="number" class="form-control" name="o_phone "  id="o_phone" value="<%=c.getO_phone() %>">
</div>

<div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">OWNER ID CARD</label>
  <input type="number" class="form-control" name="o_id "  id="o_id" value="<%=c.getO_id() %>" >
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent Name</label>
  <input type="text" class="form-control" name="a_name "  id="a_name" value="<%=c.getAgent_name() %> ">
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent PHONE</label>
  <input type="number" class="form-control" name="a_phone "  id="a_phone" value=<%=c.getAgent_phone() %>>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">RENT</label>
  <input type="text" class="form-control" name="rent " id="rent"  value="<%=c.getRent()%>">
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">DEPOSIT</label>
  <input type="text" class="form-control" name="deposit " id="deposit" value="<%=c.getDeposite() %>" >
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlTextarea1" class="form-label"  >Description</label>
  <textarea class="form-control" name="description" id="description"  rows="3"><%=c.getDescription() %></textarea>
</div>
  
  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">DISTRICT</label>
  <input type="text" class="form-control" name="district" id="district" value="<%=c.getDistrict() %>">
</div>
  
 <div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="hall " id="hall">
  <%
  if("1 hall".equals(c.getHall())){
  %>
  <option value="1 hall">1 hall</option>
  <option value="2 hall">2 hall</option>
  <option value="3 hall">3 hall</option>
  <option value="4 hall">4 hall</option>
  <option value="5 hall">5 hall</option>
  <% 
  }else if("2 hall".equals(c.getHall())){
	  %>
  <option value="2 hall">2 hall</option>
  <option value="1 hall">1 hall</option>
  <option value="3 hall">3 hall</option>
  <option value="4 hall">4 hall</option>
  <option value="5 hall">5 hall</option>
  <% 
  }else if("3 hall".equals(c.getHall())){
  %>
  <option value="3 hall">3 hall</option>
  <option value="1 hall">1 hall</option>
  <option value="2 hall">2 hall</option>
  <option value="4 hall">4 hall</option>
  <option value="5 hall">5 hall</option>
  <%
  }else if("4 hall".equals(c.getHall())){
	  %>
	  <option value="4 hall">4 hall</option>
  <option value="1 hall">1 hall</option>
  <option value="2 hall">2 hall</option>
  <option value="3 hall">3 hall</option>
  <option value="5 hall">5 hall</option>
  }
  <% 
  }else{
	  %>
	  <option value="5 hall">5 hall</option>
	  <option value="1 hall">1 hall</option>
  <option value="2 hall">2 hall</option>
  <option value="3 hall">3 hall</option>
  <option value="4 hall">4 hall</option>
  <%}
  %>
</select>

  </div>
 

   
    <div class="mb-3 w-50">
    <label for="exampleFormControlInput1" class="form-label">AREA</label>
  <div class="input-group mb-3">
  <span class="input-group-text">m²</span>
  <input type="text" class="form-control" id="area" name="area" value="<%=c.getArea() %>">
</div>
</div>


<div class="mb-3 w-50">
  
  <select class="form-select" aria-label="Default select example" name="category" id="category">
  <%
  if("single room rental".equals(c.getCategorie())){
	 %> 
	  <option value="single room rental">single room rental</option>
	  <option value="whole set rental">whole set rental</option>
	  
	  <%
  }else{
	  %>
	<option value="whole set rental">whole set rental</option>
	 <option value="single room rental">single room rental</option>
	<%  
  }
  %>
  

</select>

  </div>
  
  <div class="mb-3 w-50">
  

  <select class="form-select" aria-label="Default select example" name="status"  id="status">
  <%
  if("available".equals(c.getStatus())){
  %>
  <option value="available">available</option>
  <option value="rented">rented</option>

  <%
  }
  else{
  %>
  <option value="rented">rented</option>
    <option value="available">available</option>
  <%
  }
  %>
  
</select>

  </div>
  



</div>
<button type="submit" class="btn btn-outline-success btn-lg" style="float:right;margin-right:40px;">Update</button>
</form>
</div>

</section>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>




</body>
</html>