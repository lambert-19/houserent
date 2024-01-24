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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" ></script>
    
<title>Update Contract</title>
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
</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>

<section class="container">
<main class="view ">
<div class="main">
<form action="o_Update_Contract" method="post" id="contract" enctype="multipart/form-data">
<h2 class="text-center fs-1 ">Update Contract</h2>

<%
int id=Integer.parseInt(request.getParameter("id"));
CrudDao dao=new CrudDao(DbCon.getConnection());
Contract c=dao.Getidcontract(id);
%>

<div class="card align-items-center" style="width:100%;">


  <div class="mb-3 w-50 mt-5">
  <label for="exampleFormControlInput1" class="form-label">FLOOR NUMBER</label>
  <input type="text" class="form-control" name="floor_number " value="<%=c.getHouse_number() %>" id="floor" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Address</label>
  <input type="text" class="form-control" name="address " value="<%=c.getHouse_address() %>" id="address" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lessor Name</label>
  <input type="text" class="form-control" name="l_name " value="<%=c.getLessor_name() %>" id="lessor_name" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lessor Phone NUMBER</label>
  <input type="number" class="form-control" name="l_phone "  value="<%=c.getLessor_number() %>" id="lessor_phone" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Name of The Renter</label>
  <input type="text" class="form-control" name="name_renter " value="<%=c.getRenter_name() %>" id="renter_name" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Id Renter</label>
  <input type="text" class="form-control" name="Id_renter " value="<%=c.getID_renter() %>" id="id_renter" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Renter Phone Number</label>
  <input type="number" class="form-control" name="r_phone " value="<%=c.getRenter_number() %>" id="renter_phone" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Lease Term</label>
  <input type="text" class="form-control" name="lease_term " value="<%=c.getLease_term() %>" id="lease_term" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Rent</label>
  <input type="number" class="form-control" name="rent " value="<%=c.getRent() %>" id="rent" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agency Fee</label>
  <input type="number" class="form-control" name="agency_fee " value="<%=c.getAgency_fee() %>" id="agentcy_fee" >
</div>

  <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Agent Name</label>
  <input type="text" class="form-control" name="agent_name " value=<%=c.getAgent_name() %> id="agent_name" >
</div>

   <div class="mb-3 w-50">
  <label for="exampleFormControlInput1" class="form-label">Date</label>
  <input type="date" class="form-control" name="date" value="<%=c.getDate() %>" id="date" >
</div>

<input type="hidden" name="id" value="<%=c.getId() %>">

<button type="submit" class="btn btn-outline-success btn-lg px-5 mt-3 mb-2" name="button">Update</button>
</div>

</form>
</div>
</main>
</section>
</body>
</html>