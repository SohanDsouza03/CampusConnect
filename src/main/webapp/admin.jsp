<%@ page import="java.util.*,dao.*,model.*" %>

<%
ComplaintDAO dao = new ComplaintDAO();
List<Complaint> list = dao.getAllComplaints();
%>

<!DOCTYPE html>
<html>

<head>

<title>Campus Connect - Admin Panel</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

<style>

body{
background:#eef2f7;
}

.container{
margin-top:40px;
}

.card{
border-radius:15px;
box-shadow:0px 0px 20px rgba(0,0,0,0.15);
}

</style>

</head>

<body>

<nav class="navbar navbar-dark bg-dark">

<div class="container">

<span class="navbar-brand">

🎓 Campus Connect - Administrator

</span>

<a href="logout" class="btn btn-danger">

Logout

</a>

</div>

</nav>

<div class="container">

<div class="card">

<div class="card-header bg-primary text-white">

<h3>All Complaints</h3>

</div>

<div class="card-body">

<table class="table table-bordered table-hover">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Student ID</th>

<th>Title</th>

<th>Description</th>

<th>Status</th>

<th>Action</th>

</tr>

</thead>

<tbody>

<%

for(Complaint c : list){

%>

<tr>

<td><%=c.getId()%></td>

<td><%=c.getUserId()%></td>

<td><%=c.getTitle()%></td>

<td><%=c.getDescription()%></td>

<td>

<%

if(c.getStatus().equals("Pending")){

%>

<span class="badge bg-warning text-dark">

Pending

</span>

<%

}else{

%>

<span class="badge bg-success">

Resolved

</span>

<%

}

%>

</td>

<td>

<%

if(c.getStatus().equals("Pending")){

%>

<a href="resolveComplaint?id=<%=c.getId()%>"

class="btn btn-primary btn-sm">

Resolve

</a>

<%

}else{

%>

<button class="btn btn-success btn-sm" disabled>

✔ Resolved

</button>

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

</div>

</body>

</html>