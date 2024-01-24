<%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.PreparedStatement" %>
 <%@page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ include file="sidebar.jsp" %>
 
 
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
.main-title{
display:flex;
justify-content:space-between;
}
.main-title p{
font-size:20px;
align-items:center;

}

.main-card{
display:flex;
grid-template-column:1fr 1fr 1fr 1fr;
gap:20px;
margin:20px 0;
}

.card{
width:100%;
display:flex;
flex-direction:column;
justify-content:space-around;
padding:25px;
background-color:#FAEBD7;
box-sizing:border-box;
border:1px solid #d2d2d3;
border-radius:5px;
box-shadow:0 6px 7px -4px rgba(0,0,0,0.2);
}


.card span{
font-size:20px;
font-weight:20px;
}

.card-inner{
display:flex;
align-items:center;
justify-content:space-between;
}

.card-inner span{
color:#A9A9A9;
display:flex;
align-items:center;
justify-content:space-between;
}

.card:first-child{
border-left:7px solid #246dec;
}
.card:nth-child(2){
border-left:7px solid #f5b74f;
}
.card:nth-child(3){
border-left:7px solid #367952;
}
.card:nth-child(4){
border-left:7px solid #cc3c43;
}
</style>
</head>
<body>


<section class="container">
<div class="main ">

<div class="main-title ">
<p class="font-weight-bold">DASHBOARD</p>
</div>

<div class="main-card">
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from landlordregistration";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
<div class="card">
<div class="card-inner">
<p class="text-Dark">TOTAL LANDLORDS</p>
<span class="bi bi-person-fill"></span>
</div>
<span class="text-info font-weight-bold"><%=count %></span>
</div>
    <%}
}catch(Exception e){
	e.printStackTrace();
}

%>

<!-- count total clients -->
<%
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from renterregister";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
<div class="card">
<div class="card-inner">
<p class="text-Dark">TOTAL CLIENTS</p>
<span class="bi bi-person"></span>
</div>
<span class="text-info font-weight-bold"><%=count %></span>
</div>
    <%}
}catch(Exception e){
	e.printStackTrace();
}

%>
<!-- count total contract -->

<%

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from contract";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
	
	<div class="card">
	<div class="card-inner">
	<p class="text-Dark">TOTAL Contract</p>
	<span class="bi bi-clipboard2-check"></span>
	</div>
	

	<span class="text-info font-weight-bold"> <%=count %> </span>
	
	</div>

    <%}
}catch(Exception e){
	e.printStackTrace();
}

%>
<!-- count total houses -->

<%

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
    String query="select count(*) from house";
	PreparedStatement ps=con.prepareStatement(query);
     ResultSet rs=ps.executeQuery();
     int count;
     while(rs.next()){
    	 count=rs.getInt(1);
    	 %>
    	 <div class="card">
	<div class="card-inner">
	<p class="text-Dark">TOTAL HOUSES</p><br>
	<span class="bi bi-house-heart"></span>
	</div>
<span class="text-info font-weight-bold"><%=count %></span>
</div>
    	 
     <%}
}catch(Exception e){
	e.printStackTrace();
}

%>





</div>
</div>
</section>



</body>
</html>
