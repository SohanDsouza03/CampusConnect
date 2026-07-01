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

<style>

body{
background:#eef2f7;
}

.card{
border-radius:15px;
box-shadow:0px 0px 15px rgba(0,0,0,0.15);
transition:0.3s;
}

.card:hover{
transform:scale(1.03);
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-primary">

<div class="container">

<span class="navbar-brand mb-0 h1">
🎓 Campus Connect
</span>

<a href="logout" class="btn btn-light">
Logout
</a>

</div>

</nav>

<div class="container mt-5">

<h2 class="text-center mb-5">

Welcome, <%= user.getFullname() %> 👋

</h2>

<div class="row">

<div class="col-md-6">

<div class="card text-center p-4">

<h3>📢</h3>

<h4>Raise Complaint</h4>

<p>Submit your grievance to the administration.</p>

<a href="complaint.jsp" class="btn btn-primary">

Open

</a>

</div>

</div>

<div class="col-md-6">

<div class="card text-center p-4">

<h3>📋</h3>

<h4>My Complaints</h4>

<p>View all complaints submitted by you.</p>

<a href="myComplaints.jsp" class="btn btn-success">

View

</a>

</div>

</div>

</div>

</div>

</body>

</html>