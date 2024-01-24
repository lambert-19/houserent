<%@page import="servlet.Contract"%>
<%@page import="java.util.List"%>
<%@page import="servlet.Crud"%>
<%@page import="dbconnection.DbCon"%>
<%@page import="servlet.CrudDao"%>

 <%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.Statement" %>
 <%@page import="java.sql.Connection" %>
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
.row-1 span{
margin-left:0;
color:grey;
font-family:sans-serif;
text-transform:capitalize;
float:left;
display:table-cell;

}
.row-1 a{
color:black;
text-indent: 50px;
display:block;
font-size:20px;
}

</style>
</head>
<body>

<%@ include file="owner_sidebar.jsp" %>

<section class="container">
<main class="view ">
<div class="main">
<div class="row">
<%
int idh=Integer.parseInt(request.getParameter("id"));

try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
	Statement ps=con.createStatement();
	
	String query="select * from contract where id="+ idh + "";
	
	ResultSet rs =ps.executeQuery(query);
	while(rs.next()){
		
		String house_number=rs.getString("house_number");
		String house_address=rs.getString("address");
		String lessor_name=rs.getString("lessor_name");
		String lessor_number=rs.getString("lessor_phone");
		String rent=rs.getString("rent");
		String renter=rs.getString("renter_name");
		String ID_renter=rs.getString("Id_renter");
		String renter_number=rs.getString("phone_number_renter");
		String lease_term=rs.getString("lease_term");
	    String agency_fee=	rs.getString("agency_fee");	
	    String agent_name=rs.getString("agent_name");
	    String date=rs.getString("contract_date");
	    String photo=rs.getString("photo_name");
		%>
		
		<div class="col-md-6 text-center p-3 border">
<a href="">
   <img height="600px" width="440px" src="photo/<%=photo %>">
   </a>
</div>

<div class="col-md-6 text-center p-3 border">
<div class="row-1">
<a ><span>Floor:</span> <%=house_number %> </a> <br>

<a ><span>Address:</span> <%=house_address %></a> <br>

<a ><span>Lessor Name:</span> <%=lessor_name %> </a> <br>

<a ><span>Lessor Phone:</span> <%=lessor_number %> </a> <br>

<a ><span>Id Renter:</span> <%=ID_renter %> </a> <br>

<a ><span>Renter Name:</span> <%=renter %> </a> <br>

<a ><span>Renter Number:</span> <%=renter_number %></a> <br>

<a ><span>Lease Term:</span> <%=lease_term %> </a> <br>

<a ><span>Rent:</span> <%=rent %> </a> <br>

<a ><span>Agency Fee:</span> <%=agency_fee %> </a> <br>

<a ><span>Agent Name:</span> <%=agent_name %> </a> <br>

<a ><span>Contract Date:</span> <%=date %> </a> <br>
<input type="hidden" name="id" value="<%=idh %>">
</div>
</div>
		
		
		
	<% 	
	}
}catch(Exception e){
	e.printStackTrace();
}

%>




</div>
</div>
</main>
</section>


</body>
</html>