<%@page import="servlet.Crud"%>
<%@page import="servlet.CrudDao"%>
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
<title>Update Client Page</title>
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
<form action="UpdateClient" method="post" id="register">
<h2 class="text-center fs-1 ">Update Client Information</h2>
<%
int id=Integer.parseInt(request.getParameter("id"));
CrudDao dao= new CrudDao(DbCon.getConnection());
Crud c=dao.Getidclient(id);
%>
<div class="card align-items-center" style="width:100%;">

<div class="mb-3 w-50 mt-5">
  <label for="exampleFormControlInput1" class="form-label">First Name </label>
  <input type="text" class="form-control" value="<%=c.getFname() %>" id="f_name" name="f_name" >
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Last Name </label>
  <input type="text" class="form-control" id="l_name" name="l_name" value="<%=c.getLname() %>">
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Email </label>
  <input type="email" class="form-control" id="email" name="email" value="<%=c.getEmail() %>">
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label">Password </label>
  <input type="password" class="form-control" id="password" name="password" value="<%=c.getPass() %>">
</div>

<div class="mb-3 w-50 mt-3">
  <label for="exampleFormControlInput1" class="form-label"> Phone</label>
  <input type="text" class="form-control" id="phone" name="phone" value="<%=c.getPhone() %>">
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