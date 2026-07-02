<%@ page import="java.util.*,dao.*,model.*" %>

<%
ComplaintDAO dao = new ComplaintDAO();
List<Complaint> list = dao.getAllComplaints();
%>

<!DOCTYPE html>
<html>
<head>

<title>Administrator Panel</title>

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

.card{
border:none;
border-radius:20px;
box-shadow:0 15px 35px rgba(0,0,0,.1);
}

.dashboard-card{
border-radius:18px;
padding:20px;
color:white;
text-align:center;
box-shadow:0 10px 20px rgba(0,0,0,.15);
}

.total{
background:#4F46E5;
}

.pending{
background:#f59e0b;
}

.resolved{
background:#22c55e;
}

.table{
border-radius:15px;
overflow:hidden;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a class="navbar-brand fw-bold">

<i class="bi bi-shield-lock-fill"></i>

CampusConnect Admin

</a>

<a href="logout" class="btn btn-light">

Logout

</a>

</div>

</nav>

<div class="container mt-4">

<div class="row mb-4">

<div class="col-md-4">

<div class="dashboard-card total">

<h5>Total Complaints</h5>

<h2><%= list.size() %></h2>

</div>

</div>

<div class="col-md-4">

<div class="dashboard-card pending">

<h5>Pending</h5>

<%
int pending=0;

for(Complaint c:list){

if(c.getStatus().equalsIgnoreCase("Pending"))
pending++;

}
%>

<h2><%= pending %></h2>

</div>

</div>

<div class="col-md-4">

<div class="dashboard-card resolved">

<h5>Resolved</h5>

<h2><%= list.size()-pending %></h2>

</div>

</div>

</div>

<div class="card p-4">

<h3 class="mb-4">

<i class="bi bi-list-check text-primary"></i>

All Complaints

</h3>

<table class="table table-hover table-bordered">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>User ID</th>

<th>Title</th>

<th>Description</th>

<th>Status</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<%

for(Complaint c:list){

%>

<tr>

<td><%=c.getId()%></td>

<td><%=c.getUserId()%></td>

<td><%=c.getTitle()%></td>

<td><%=c.getDescription()%></td>

<td>

<%

if(c.getStatus().equalsIgnoreCase("Resolved")){

%>

<span class="badge bg-success">

Resolved

</span>

<%

}else{

%>

<span class="badge bg-warning text-dark">

Pending

</span>

<%

}

%>

</td>

<td>

<%

if(c.getStatus().equalsIgnoreCase("Pending")){

%>

<a href="resolveComplaint?id=<%=c.getId()%>"
class="btn btn-success btn-sm">

Resolve

</a>

<%

}else{

%>

<span class="text-success fw-bold">

Completed

</span>

<%

}

%>

</td>

</tr>

<%

}

%>

</tbody>

</table>

</div>

</div>

</body>
</html>