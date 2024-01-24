<%@page import="servlet.Owner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Owner auth=(Owner)request.getSession().getAttribute("auth");
    if(auth!=null){
    	request.setAttribute("auth", auth);
    }
    %>
    
<!DOCTYPE html>
<html>
<head>
 <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
     <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-iYQeCzEYFbKjA/T2uDLTpkwGzCiq6soy8tYaI1GyVh/UjpbCx/TYkiZhlZB6+fzT" crossorigin="anonymous">
<title>Owner Page</title>
<style type="text/css">
.bgcolor{
background-color:#008B8B;
}
section{
margin-top:50px;
}
ul{
margin-top:15px;
}
li i{
color:#008B8B;
cursor:pointer;
}
li span{
color:#008B8B;
cursor:pointer;
}
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
ul ul li{
margin-bottom:10px;
padding-left:5px;
border-bottom:none;
display:none;
}
ul li span:hover,
ul ul li span:hover{
color:black;
}
input{
display:none;
}
[id^=btn]:checked + ul li{
display:block;
}

</style>
</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bgcolor">
  <div class="container-fluid">
  
     <a class="navbar-brand" href="Owner.jsp">
      <img src="logo.png" class="img-fluid" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      4rent
    </a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="mx-auto"></div>
      <div class="navbar-nav">
        
        
       
          
          <a class="nav-link active" aria-current="page" href="landlordUpdatePage.jsp?id=<%= auth.getId() %>" >
          
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
                  alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                  style="width: 30px;">
              
          <%=auth.getFname() %></a>
         
         
          <form action="Logout" method="post">
          <a class="nav-link active" aria-current="page" href="Logout">Logout</a>
          </form>
      </div>
    </div>
    
    <div></div>
  </div>
</nav>

<!-- side bar start-->

<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu</span>
                </a>
                
                
                <ul class="nav nav-pills flex-column mb-sm-auto mb-0 align-items-center align-items-sm-start" id="menu">
                   
                   <li>
                        <a href="Owner.jsp" class="nav-link px-0 align-middle ">
                         <i class="bi bi-border-all"></i> <span class="ms-1 d-none d-sm-inline">HOME</span></a>
                
                    </li>
                   
                    <li>
                        <label for="btn" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                         <i class="bi bi-house"></i> <span class="ms-1 d-none d-sm-inline">Properties</span> <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                            <input type="checkbox" id="btn">
                        <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="addhouse.jsp" class="nav-link px-0"> <i class="bi bi-plus-circle-fill"></i> <span class="d-none d-sm-inline">Add Property</span> </a>
                            </li>
                            <li>
                                <a href="View_all_Available_House.jsp" class="nav-link px-0"> <i class="bi bi-house-door-fill"></i> <span class="d-none d-sm-inline">Available Properties</span> </a>
                            </li>
                            
                             <li>
                        <a href="View_all_Rented_house.jsp" class="nav-link px-0 align-middle">
                         <i class="bi bi-house-fill"></i>    <span class="ms-1 d-none d-sm-inline">Rented Properties</span></a>
                    </li>
                            
                        </ul>
                    </li>
                   
                   
                   
                    <li>
                         <label for="btn-1"  data-bs-toggle="collapse" class="nav-link px-0 align-middle" >
                            
                           <i class="bi bi-clipboard2-check"></i> <span class="ms-1 d-none d-sm-inline">Contract</span> <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                           <input type="checkbox" id="btn-1">
                                 <ul>
                    <li>
                    
                    <a href="o_insert_contract.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">Insert Contract</span> </a>
                   
                    </li>
                    
                    <li>
                    
                    <a href="o_view_contract.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">View Contracts</span> </a>
                   
                   </li>
                   
                    </ul>
                    
                    </li>
                    
                    
                     <li>
                        <a href="landlordUpdatePage.jsp?id=<%= auth.getId() %>" class="nav-link px-0 align-middle ">
                           <i class="bi bi-person-circle"></i><span class="ms-1 d-none d-sm-inline">Account</span></a>
                
                    </li>
                    
                </ul>
                
                
            </div>
        </div>
        
    </div>
</div>

<!-- Side bar end -->



</body>
</html>