<%@ page import="model.User"%>

<%
User user = (User) session.getAttribute("user");

if(user == null){
    response.sendRedirect("login.jsp");
    return;
}
%>

<!DOCTYPE html>
<html>
<head>

<title>Dashboard</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<link rel="stylesheet"
href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">

<style>

body{
background:#f4f7fc;
font-family:'Poppins',sans-serif;
}

.navbar{
background:#4F46E5;
}

.hero{
background:linear-gradient(135deg,#4F46E5,#7C3AED);
color:white;
padding:60px;
border-radius:20px;
margin-top:30px;
box-shadow:0 10px 25px rgba(0,0,0,.2);
}

.card-option{
border:none;
border-radius:20px;
transition:.3s;
box-shadow:0 10px 25px rgba(0,0,0,.08);
}

.card-option:hover{
transform:translateY(-8px);
}

.icon{
font-size:45px;
color:#4F46E5;
}

</style>

</head>

<body>

<nav class="navbar navbar-expand-lg navbar-dark">

<div class="container">

<a class="navbar-brand fw-bold" href="#">
<i class="bi bi-mortarboard-fill"></i>
CampusConnect
</a>

<a href="logout" class="btn btn-light">
Logout
</a>

</div>

</nav>

<div class="container">

<div class="hero">

<h2>

Welcome,
<%= user.getFullname() %> 👋

</h2>

<p>

Manage your campus complaints quickly and track their status anytime.

</p>

</div>

<div class="row mt-5">

<div class="col-md-6">

<div class="card card-option p-4 text-center">

<i class="bi bi-megaphone-fill icon"></i>

<h4 class="mt-3">

Raise Complaint

</h4>

<p class="text-muted">

Submit a new complaint regarding campus facilities.

</p>

<a href="complaint.jsp" class="btn btn-primary">

Raise Complaint

</a>

</div>

</div>

<div class="col-md-6">

<div class="card card-option p-4 text-center">

<i class="bi bi-card-list icon"></i>

<h4 class="mt-3">

My Complaints

</h4>

<p class="text-muted">

View all complaints submitted by you.

</p>

<a href="myComplaints.jsp" class="btn btn-success">

View Complaints

</a>

</div>

</div>

</div>

</div>

</body>
</html>