<%@ page import="java.util.*,dao.*,model.*" %>

<%
User user = (User)session.getAttribute("user");

if(user==null){
    response.sendRedirect("login.jsp");
    return;
}

ComplaintDAO dao = new ComplaintDAO();

List<Complaint> list = dao.getComplaintsByUserId(user.getId());
%>

<!DOCTYPE html>
<html>
<head>

<title>My Complaints</title>

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

table{
border-radius:15px;
overflow:hidden;
}

</style>

</head>

<body>

<nav class="navbar navbar-dark">

<div class="container">

<a class="navbar-brand fw-bold">

<i class="bi bi-mortarboard-fill"></i>

CampusConnect

</a>

<a href="dashboard.jsp" class="btn btn-light">

Dashboard

</a>

</div>

</nav>

<div class="container mt-5">

<div class="card p-4">

<h2 class="mb-4">

<i class="bi bi-card-list text-primary"></i>

My Complaints

</h2>

<table class="table table-hover table-bordered align-middle">

<thead class="table-dark">

<tr>

<th>ID</th>

<th>Title</th>

<th>Description</th>

<th>Status</th>

</tr>

</thead>

<tbody>

<%

for(Complaint c:list){

%>

<tr>

<td><%=c.getId()%></td>

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

</tr>

<%

}

%>

</tbody>

</table>

<div class="mt-4">

<a href="dashboard.jsp" class="btn btn-primary">

<i class="bi bi-arrow-left"></i>

Back to Dashboard

</a>

</div>

</div>

</div>

</body>
</html>