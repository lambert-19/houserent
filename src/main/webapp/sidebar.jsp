<%@page import="dbconnection.DbCon"%>
<%@page import="servlet.CrudDao"%>
<%@page import="servlet.Admin"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%
    Admin auth=(Admin)request.getSession().getAttribute("auth");
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
<title>Admin Page</title>
<style type="text/css">
.bgcolor{
background-color:#008B8B;
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
body{
background:#FFFAF0;
}


</style>
</head>
<body>

<nav class="navbar fixed-top navbar-expand-lg navbar-light bgcolor">
 <div class="container-fluid">
 <!-- 
 <a class="navbar-brand" href="Dashboard.jsp">
      <img src="logo.png" class="img-fluid" alt="Logo" width="30" height="24" class="d-inline-block align-text-top">
      4rent
    </a>
  -->
  
 <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
    <div class="mx-auto"></div>
      <div class="navbar-nav">
    

          <a class="nav-link active" aria-current="page" href="UpdateAdmin.jsp?id=<%=auth.getId() %>" >
          
          <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-profiles/avatar-2.webp"
                  alt="Generic placeholder image" class="img-fluid rounded-circle border border-dark border-3"
                  style="width: 30px;">
              <%=auth.getUsername() %>
          </a>
          
           <a class="nav-link active" aria-current="page" href="Logout">Logout</a>
      </div>
    </div>
 </div>

</nav>
<!-- End Navbar -->


<aside>
<!-- side bar start-->
<nav>
<div class="container-fluid">
    <div class="row flex-nowrap">
        <div class="col-auto col-md-3 col-xl-2 px-sm-2 px-0 bg-dark">
            <div class="d-flex flex-column align-items-center align-items-sm-start px-3 pt-2 text-white min-vh-100">
                <a href="/" class="d-flex align-items-center pb-3 mt-2 mb-md-0 me-md-auto text-white text-decoration-none">
                    <span class="fs-5 d-none d-sm-inline">Menu</span>
                </a>
                <ul class="nav nav-pills flex-column mb-sm-auto mt-2 mb-0 align-items-center align-items-sm-start" id="menu">
                   
                   <li>
                        <a href="Dashboard.jsp" class="nav-link px-0 mt-4 align-middle ">
                           <i class="bi bi-border-all"></i><span class="ms-1 d-none d-sm-inline">Dashboard</span></a>
                
                    </li>
                   
                    <li>
                        <label for="btn" data-bs-toggle="collapse" class="nav-link px-0 align-middle">
                         <i class="bi bi-house"></i> <span class="ms-1 d-none d-sm-inline">Properties</span>  <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                        <input type="checkbox" id="btn">
                        <ul class="collapse show nav flex-column ms-1" id="submenu1" data-bs-parent="#menu">
                            <li class="w-100">
                                <a href="AddProperty.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">Add Property</span> </a>
                            </li>
                            
                           
                            
                            <li>
                                <a href="ViewProperties.jsp" class="nav-link px-0">  <span class="d-none d-sm-inline">View Properties</span> </a>
                            </li>
                            
                         
                    
                        </ul>
                        
                    </li>
                    
                    
                    <li>
                        <label for="btn-1"  data-bs-toggle="collapse" class="nav-link px-0 align-middle" >
                           <i class="bi bi-person-fill"></i> <span class="d-none d-sm-inline">Landlords</span>     <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                   
                    <input type="checkbox" id="btn-1">
                    
                    <ul>
                    <li>
                    <a href="Insertowner.jsp" class="nav-link px-0"> <span class="d-none d-sm-inline">Add Landlord</span> </a>
                    </li>
                    
                    <li>
                    <a href="ViewLandlords.jsp" class="nav-link px-0">  <span class="d-none d-sm-inline">View Landlords</span> </a>
                   
                   </li>
                    </ul>
                    
                    </li>
                    
                    <li>
                       <label for="btn-2" class="nav-link px-0">
                            <i class="bi bi-person"></i> <span class="ms-1 d-none d-sm-inline">Tenant</span> <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                            <input type="checkbox" id="btn-2">
                             <ul>
                    <li>
                    <a href="Inserttenant.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">Register Tenant</span> </a>
                    </li>
                    
                    <li>
                    <a href="ViewTenants.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">View Tenants</span> </a>
                   
                   </li>
                    </ul>
                    
                    </li>
                    
                      <li>
                   <label for="btn-3"  data-bs-toggle="collapse" class="nav-link px-0 align-middle" >
                           <i class="bi bi-clipboard2-check"></i> <span class="ms-1 d-none d-sm-inline">CONTRACTS</span> <i class="ms-2 bi bi-caret-down-fill "></i> </label>
                           <input type="checkbox" id="btn-3">
                          <ul>
                    <li>
                    <a href="Contract.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">Insert Contract</span> </a>
                    </li>
                    
                    <li>
                    <a href="ViewContract.jsp" class="nav-link px-0">
                            <span class="ms-1 d-none d-sm-inline">View Contracts</span> </a>
                   
                   </li>
                    </ul>
                   
                   </li>
                  
                    
                    <li>
 
                      <a href="UpdateAdmin.jsp?id=<%=auth.getId() %>" class="nav-link px-0">
                           <i class="bi bi-person-circle"></i><span class="ms-1 d-none d-sm-inline">Account</span></a>
                
                    </li>
                   
                    
                </ul>
                
                
            </div>
        </div>
 
    </div>
    
    <div></div>
</div>
</nav>

<!-- Side bar end -->
</aside>
<!-- End of aside -->




</body>
</html>