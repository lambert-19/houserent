<%@page import="java.util.List"%>
<%@page import="servlet.Housecard" %>
<%@page import="dbconnection.DbCon"%>
<%@page import="servlet.HousecardDao"%>
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

<h2 class="text-center fs-1 ">All Houses</h2>
<table class="table table-dark table-striped-columns table-hover">
  <thead>
    <tr>
      <th scope="col">#</th>
      <th scope="col">Image</th>
      <th scope="col">Floor</th>
      <th scope="col">House Type</th>
      <th scope="col">Owner</th>
      <th scope="col">Rent Price</th>
      <th scope="col">Status</th>
      <th scope="col">Action</th>
      
    </tr>
  </thead>

 <tbody>
    <%
    HousecardDao dao=new HousecardDao(DbCon.getConnection());
    List<Housecard> list=dao.getAllHouse();
    for(Housecard c:list){
%>
	 
	  <tr>
      <th scope="row"><%=c.getId() %></th>
      <td>
      <img width="100" src="photo/<%=c.getImage() %>">
      </td>
      <td><%=c.getFloor() %></td>
      <td><%=c.getHouse_type() %></td>
      <td><%=c.getOwner() %></td>
      <td><%=c.getRent() %></td>
      <td class=""><%=c.getStatus() %></td>
      <td>
     
      <a href="HouseDtls.jsp?id=<%=c.getId() %>" class="btn btn-success btn-sm">View
       </a>
       <a href="UpdateHouse.jsp?id=<%=c.getId()  %>" class="btn btn-primary btn-sm">Edit
       </a>
     
      <a href="Delete3?id=<%=c.getId() %>" class="btn btn-danger btn-sm">Delete
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

</body>
</html>