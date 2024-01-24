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
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Admin Page</title>
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
</style>
</head>
<body>

<%@ include file="sidebar.jsp" %>

<section class="container">
<main class="view ">
<div class="main">
<h2 class="text-center fs-1 ">All Contract Details</h2>
<table class="table table-dark table-striped-columns ">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">House_number</th>
      <th scope="col">Address</th>
      <th scope="col">Lessor_Name</th>
      <th scope="col">Renter_Name</th>
      <th scope="col">Rent</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>

 <tbody>
    <%
 CrudDao dao=new CrudDao(DbCon.getConnection());
 List<Contract> list=dao.Allcontract();
 for(Contract c: list){%>
	 
	  <tr>
      <th scope="row"><%=c.getId() %></th>
      <td><%=c.getHouse_number() %></td>
      <td><%=c.getHouse_address() %></td>
      <td><%=c.getLessor_name() %></td>
      <td><%=c.getRenter_name() %></td>
      <td><%=c.getRent() %></td>
      <td>
     
     <a href="ContractDtls.jsp?id=<%=c.getId()  %>" class="btn btn-info btn-sm">view
       </a>
     
       <a href="UpdateContract.jsp?id=<%=c.getId()  %>" class="btn btn-primary btn-sm">Edit
       </a>
     
     
      <a href="Delete2?id=<%= c.getId() %>" class="btn btn-danger btn-sm">Delete
      </a>
     
      </td>
    </tr>
	 
 <%}
 
 %>
    
  </tbody>
</table>
</div>
</main>

</section>

<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3" crossorigin="anonymous"></script>

</body>
</html>