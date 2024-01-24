<%@page import="servlet.Client"%>
<%@page import="servlet.Housecard" %>
<%@page import="java.util.*"%>
<%@page import="servlet.Cart"%>
<%@page import="servlet.HousecardDao"%>
<%@ page import="dbconnection.DbCon" %>
<%@ page import="servlet.Details" %>
<%@page import="java.util.*"%>
<%@page import="java.sql.ResultSet" %>
 <%@page import="java.sql.DriverManager" %>
 <%@page import="java.sql.Statement" %>
 <%@page import="java.sql.Connection" %>

 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>House Details</title>
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
font-size:18px;
}
h5{
margin-bottom:10px;
text-transform:uppercase;
color:#008B8B;
}
h3{
color:#008B8B;
}
</style>
</head>
<body>



<%@ include file="sidebar.jsp" %>



<section class="details ">

<div class="container p-3">
<main class="view ">
<div class="main">
<div class="row">
 <%
 int idh=Integer.parseInt(request.getParameter("id"));

 try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection con= DriverManager.getConnection("jdbc:mysql://localhost:3306/house_rental","root","#ibrahimaNDAW19");
		Statement ps=con.createStatement();
String query="select * from house where idhouse="+ idh + "";

ResultSet rs=ps.executeQuery(query);

while(rs.next()){
	
	String title=rs.getString("title");
	String floor=rs.getString("floor");
	String house_type=rs.getString("house_type");
	String address =rs.getString("owner_name");
	String a_name=rs.getString("agent_name");
	String a_phone=rs.getString("agent_phone");
	String rent=rs.getString("rent");
	String deposit=rs.getString("deposit");
	String description = rs.getString("description");
	String district=rs.getString("district");
	String hall=rs.getString("hall");
	String area=rs.getString("area");
	String owner=rs.getString("owner_name");
	String owner_phone=rs.getString("owner_phone");
	String owner_id=rs.getString("owner_id");
	String categorie=rs.getString("categorie");
	String image=rs.getString("image_name");
	String facilities=rs.getString("facilities");
	
	%>
	            <h5 class="text-center">  <%=title %> </h5>
	  <div class="col-md-6 text-center p-3 border">
	  <a href="">
   <img height="600px" width="430px" src="photo/<%=image %>"><br>
   </a>
</div>

<div class="col-md-6 text-center p-3 border">
<h3><%=rent %> yuan/Month</h3>

<div class="row-1">
<a ><span>rental Method:</span>  <%= categorie %> </a> <br>
<a ><span>Property type:</span>
<%=house_type %> ,<%= hall %> ,<%=area %> m² </a> <br>

<a ><span>Floor:</span> <%=floor %></a> <br>

<a ><span>District:</span><%=district %></a> <br>

<a ><span>Address:</span><%=address %> </a> <br>

<a><span>Agent Name:</span> <%=a_name %>  </a><br>

<a><span> Agent Phone:</span> <%=a_phone %> </a><br>

<a><span>Owner Name:</span> <%=owner %> </a><br>

<a><span>Owner Phone:</span> <%=owner_phone %> </a><br>

<a><span>Owner ID:</span> <%=owner_id %> </a>

<input type="hidden" name="id" value="<%=idh %>">

</div>
</div>

<div class="row-3">
<h2>House Description</h2>
<%=description %>
</div>
<div class="row-2">
<h2>Listing Details</h2>
 <%=facilities %>
</div>
	
	
<% }
}catch(Exception e){
   e.printStackTrace();
}
 
 %>
 

	
	 

	


</div>

</div>
</main>
</div>
</section>
</body>
</html>